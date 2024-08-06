from pycparser import c_ast,c_generator
from Visitors import LocalVariablesModifier,DeclVisitor,InputParamModifier,IdVisitor
from astNodes import getDeclarationNode,getSimpleAssignmentNode
import copy

def getFunctionAssignments(functionInfo,argumentMap,localVariablesMap,assignmentNodes):
    copyAssignmentNodes = copy.deepcopy(functionInfo['assignmentNodes'])
    for node in copyAssignmentNodes:
        visitor = IdVisitor(argumentMap,localVariablesMap)
        visitor.visit(node)
        assignmentNodes.append(node);

def getType(node):
    if isinstance(node,c_ast.IdentifierType):
            if node.names == ["_Bool"]:
                return "bool"
            else:
                return node.names[0]
    else:
        if node.type.names == ["_Bool"]:
            return "bool"
        else:
            return node.type.names[0]

def extractFunctionInfo(node,functionInfo):
    function_name = node.decl.name
    parameters = []
    localVariables = []
    localVariablesType = []
    assignmentNodes = []

    if node.decl.type.args:
        for param_decl in node.decl.type.args.params:
            parameters.append(param_decl.name)
    
    functionBody = node.body
    for blockItem in functionBody.block_items:
        if isinstance(blockItem,c_ast.Decl):
            typeOfId = getType(blockItem.type.type)
            localVariablesType.append(typeOfId)
            localVariables.append(blockItem.name)
        if isinstance(blockItem,c_ast.Assignment):
            if isinstance(blockItem.lvalue,c_ast.UnaryOp):
                blockItem.lvalue = c_ast.ID(blockItem.lvalue.expr.name)
            visitor = LocalVariablesModifier(localVariables,function_name)
            visitor.visit(blockItem)
            assignmentNodes.append(blockItem)
    
    for index in range(len(localVariables)):
        localVariables[index] += ('_' + function_name)

    functionInfo[function_name] = {
        'parameters' : parameters,
        'localVariables' : localVariables,
        'localVariablesType' : localVariablesType,
        'assignmentNodes' : assignmentNodes,
        'firstTimeProcessing' : True,
        'timesCalled' : 0
    }

def processDependantFunctions(node,functionInfo,isTopModule):
    functionBody = node.body
    changedInputMap = {}
    bodyNodes = []

    if isTopModule:
        if node.decl.type.args:
            for param_decl in node.decl.type.args.params:
                visitor = DeclVisitor()
                visitor.visit(param_decl)
                declType = param_decl.type
                if isinstance(declType,c_ast.TypeDecl):
                    typeOfId = getType(declType.type)
                    bodyNodes.append(getDeclarationNode(param_decl.name + '_inp',typeOfId))
                    changedInputMap[param_decl.name] = param_decl.name + '_inp'
            for param_decl in node.decl.type.args.params:
                declType = param_decl.type
                if isinstance(declType,c_ast.TypeDecl):
                    bodyNodes.append(getSimpleAssignmentNode(param_decl.name + '_inp',param_decl.name))
    
    for blockItem in functionBody.block_items:
        if isinstance(blockItem,c_ast.Decl):
            visitor = DeclVisitor()
            visitor.visit(blockItem)
            bodyNodes.append(blockItem)
        
        if isinstance(blockItem,c_ast.Assignment):
            visitor = InputParamModifier(changedInputMap)
            visitor.visit(blockItem)
            bodyNodes.append(blockItem)

        if isinstance(blockItem,c_ast.FuncCall):
            argumentMap = {}
            localVariablesMap = {}
            
            functionName = blockItem.name.name
            parameters = functionInfo[functionName]['parameters']
            localVariables = functionInfo[functionName]['localVariables']
            localVariablesType = functionInfo[functionName]['localVariablesType']
            timesCalled = functionInfo[functionName]['timesCalled']
            arguments = blockItem.args.exprs
            for index in range(len(arguments)):
                if isinstance(arguments[index],c_ast.UnaryOp):
                    arguments[index] = c_ast.ID(arguments[index].expr.name)

            for localVariable,localVariableType in zip(localVariables,localVariablesType):
                declNode = getDeclarationNode(localVariable + str(timesCalled),localVariableType)
                localVariablesMap[localVariable] = localVariable + str(timesCalled)
                bodyNodes.append(declNode)
            
            for index in range(len(parameters)):
                if arguments[index].name in changedInputMap:
                    argName = arguments[index].name + '_inp'
                else:
                    argName = arguments[index].name
                argumentMap[parameters[index]] = argName
            
            getFunctionAssignments(functionInfo[functionName],argumentMap,localVariablesMap,bodyNodes)
            functionInfo[functionName]['timesCalled'] += 1
    node.body = c_ast.Compound(block_items=bodyNodes)

def mergeConstants(ast):
    a = 1

def insertAssignmentsAndDeclForConstants(ast,constArr):
    paramList = ast.ext[0].decl.type.args.params
    bodyNodes = ast.ext[0].body.block_items
    for const in constArr:
        bodyNodes.insert(0,getSimpleAssignmentNode(const + "_inp",const))
    for const in constArr:
        bodyNodes.insert(0,getDeclarationNode(const + "_inp","int"))
    for const in constArr:
        paramList.append(getDeclarationNode(const,"int"))
    return ast


def generate_c_file(ast,filename):
    """
    Generate C code from the provided Abstract Syntax Tree (AST) using MyCGenerator,
    and save the generated code to a file named "output.c".

    Args:
        ast: The Abstract Syntax Tree (AST) to generate C code from.
    """
    generator = c_generator.CGenerator()
    with open(filename, 'w') as output_file:
        print(generator.visit(ast), file=output_file)