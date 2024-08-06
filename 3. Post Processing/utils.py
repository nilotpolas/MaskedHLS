from pycparser import c_ast,c_generator
from astNodes import getAssignmentNode,getDeclarationNode,getRegFuncCallNode,getSimpleAssignmentNode

def isRegCall(node):
    return isinstance(node,c_ast.FuncCall) and node.name.name == 'reg'

def isNestedRegCall(node):
    return isRegCall(node) and isRegCall(node.args.exprs[0])

def extractOperands(node):
        if (isinstance(node, c_ast.BinaryOp)):
            leftOperand = extractOperands(node.left) 
            rightOperand = extractOperands(node.right)
            return [leftOperand,rightOperand]
        elif isRegCall(node):
            return "v_reg_" + node.args.exprs[0].name
        elif isinstance(node,c_ast.ID):
            return node.name
        elif isinstance(node,c_ast.UnaryOp):
            return "v_neg_" + extractOperands(node.expr)
        else:
            raise ValueError(f"Unsupported node type: {type(node).__name__}")
    
def getVariableNameFromOperands(operands,operatorNameMap,operator = ""):
    variableName = operands[0]
    if(len(operands) > 1):
        variableName += ("_" + operatorNameMap[operator] + "_" + operands[1])
    return variableName

def noneOperandStartsWithv(operands):
    for operand in operands:
        if operand.startswith("v"):
            return False
    return True

def getNewVarName(assgnNo):
    return "z" + str(assgnNo) + "_assgn" + str(assgnNo)

def changeBinaryOpUtil(node,varForBinaryOp,bodyNodes):
    bodyNodes.append(getDeclarationNode(varForBinaryOp))
    bodyNodes.append(getSimpleAssignmentNode(varForBinaryOp,node))

def changeBinaryOps(node,bodyNodes,assgnNo):
    currNode = node.rvalue
    if isinstance(currNode,c_ast.BinaryOp):
        origLeft = currNode.left
        origRight = currNode.right
        
        if isNestedRegCall(currNode.right):
            varForBinaryOp = getNewVarName(assgnNo)
            changeBinaryOpUtil(currNode.right,varForBinaryOp,bodyNodes)
            origRight = c_ast.ID(varForBinaryOp)
        if isNestedRegCall(currNode.left):
            varForBinaryOp = getNewVarName(assgnNo+1)
            changeBinaryOpUtil(currNode.left,varForBinaryOp,bodyNodes)
            origLeft = c_ast.ID(varForBinaryOp)
        binaryOpNode = c_ast.BinaryOp(op=currNode.op,left=origLeft,right=origRight)
        bodyNodes.append(c_ast.Assignment(op='=',lvalue=node.lvalue,rvalue=binaryOpNode))
    else:
        bodyNodes.append(node)

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


def handleAssignmentNodes(node,bodyNodes,operatorNameMap,assgnNo):
    count = 1;
    currNode = node.rvalue
    if isRegCall(currNode):
        while isRegCall(currNode.args.exprs[0]):
            count += 1
            currNode = currNode.args.exprs[0]
        currNode = currNode.args.exprs[0]
        operands = extractOperands(currNode)
        if not isinstance(operands,list):
            operands = [operands]

        if count == 1 and noneOperandStartsWithv(operands):
             bodyNodes.append(node)
             return

        op = currNode.op if isinstance(currNode, c_ast.BinaryOp) else ""
        variableName = getNewVarName(assgnNo)
        assignmentNode = getAssignmentNode(operands,op,variableName)
        # if len(operands) > 1:
        bodyNodes.append(getDeclarationNode(variableName))
        bodyNodes.append(assignmentNode)
        prevVarName = variableName

        for index in range(count):
            newVarName = variableName + str(index)
            if index != count - 1:
                bodyNodes.append(getDeclarationNode(newVarName))
            regCallNode = getRegFuncCallNode(prevVarName)
            lvalue = c_ast.ID(newVarName) if index != count -1 else node.lvalue
            bodyNodes.append(c_ast.Assignment(op='=',lvalue=lvalue,rvalue=regCallNode))
            prevVarName = newVarName
        
    else:
        bodyNodes.append(node)
    