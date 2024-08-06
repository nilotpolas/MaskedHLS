from pycparser import c_ast
from DiGraph import DiGraph

class FunctionVisitor(c_ast.NodeVisitor):
    def __init__(self,diGraph : DiGraph,functionName):
        self.diGraph = diGraph
        self.functionName = functionName
    def visit_FuncCall(self,node):
        if node.name.name != 'reg':
            self.diGraph.addFunction(node.name.name)
            self.diGraph.addEdgeBetween(node.name.name,self.functionName)

class LocalVariablesModifier(c_ast.NodeVisitor):
    def __init__(self,localVariables,fName):
        self.localVariables = localVariables
        self.fName = fName
    def visit_ID(self,node):
        if(node.name in self.localVariables):
            node.name = node.name + '_' + self.fName

class DeclVisitor(c_ast.NodeVisitor):
    def __init__(self,arrayMap = None,ast = None):
        self.arrayMap = arrayMap
        self.ast = ast

    def storeArray(self,node):
        arrName = node.name
        contents = []
        for item in node.init.exprs:
            if item.value.startswith("0x"):
                decVal = int(item.value[2:],16)
            else:
                decVal = int(item.value)
            contents.append(decVal)
        self.arrayMap[arrName] = contents

    def visit_Decl(self,node):
        declType = node.type.type

        if isinstance(node.type,c_ast.ArrayDecl):
            self.storeArray(node)
        elif isinstance(declType,c_ast.IdentifierType):
            if declType.names == ["_Bool"]:
                declType.names = ["bool"]
        else:
            if declType.type.names == ["_Bool"]:
                declType.type.names = ["bool"]

class InputParamModifier(c_ast.NodeVisitor):
    def __init__(self,changedInputMap):
        self.changedInputMap = changedInputMap
    def visit_ID(self,node):
        if node.name in self.changedInputMap:
            node.name = self.changedInputMap[node.name]

class IdVisitor(c_ast.NodeVisitor):
    def __init__(self,argumentMap,localVariablesMap):
        self.localVariablesMap = localVariablesMap
        self.argumentMap = argumentMap
    def visit_ID(self, node):
        if node.name in self.argumentMap:
            node.name = self.argumentMap[node.name]
        if node.name in self.localVariablesMap:
            node.name = self.localVariablesMap[node.name]

class ArrayValueReplacer(c_ast.NodeVisitor):
    def __init__(self,arrayMap,constantArray):
        self.arrayMap = arrayMap
        self.constantArray = constantArray

    def visit_BinaryOp(self,node):
        if isinstance(node.right,c_ast.ArrayRef):
            arrName = node.right.name.name
            contents = self.arrayMap[arrName]
            value = contents[int(node.right.subscript.value)]
            node.right = c_ast.Constant(type='int',value=str(value))
        self.generic_visit(node)
    
    def visit_Constant(self,node):
        value = node.value
        if value.startswith("0x"):
            decVal = str(int(value[2:],16))
        else:
            decVal = value
        node.value = decVal
        const = "dec_" + decVal
        if const not in self.constantArray:
            self.constantArray.append("dec_" + decVal)

class ConstToVar(c_ast.NodeVisitor):
    def visit_Assignment(self,node):
        if isinstance(node.rvalue,c_ast.Constant):
            constName = node.rvalue.value
            node.rvalue = c_ast.ID(name="dec_" + constName + "_inp")
            return
        else:
            self.generic_visit(node)
    def visit_BinaryOp(self,node):
        if isinstance(node.right,c_ast.Constant):
            constName = node.right.value
            node.right = c_ast.ID(name="dec_" + constName + "_inp")
        if isinstance(node.left,c_ast.Constant):
            constName = node.left.value
            node.left = c_ast.ID(name="dec_" + constName + "_inp")

# class HexToDecConverter(c_ast.NodeVisitor):
#     def visit_Constant(self,node):
#         value = node.value
#         if value.startswith("0x"):
#             decVal = str(int(value[2:],16))
#         else:
#             decVal = value
#         node.value = decVal

class ConstantMerger(c_ast.NodeVisitor):
    def __init__(self,constToGlobalMap,localToGlobalMap):
        self.constToGlobalMap = constToGlobalMap
        self.localToGlobalMap = localToGlobalMap

    def __getNameForConstants(self,value):
        if value.startswith("0x"):
            return "hex" + value[2:]
        else: 
            return "dec" + value

    def visit_Assignment(self,node):
        if isinstance(node.rvalue,c_ast.Constant):
            constValue = node.rvalue.value
            idConstValue = self.__getNameForConstants(constValue)
            if constValue not in self.constToGlobalMap:
                self.constToGlobalMap[constValue] = idConstValue
            self.localToGlobalMap[node.lvalue.name] = idConstValue
        if isinstance(node.rvalue,c_ast.BinaryOp):
            constName = node.rvalue.right.name
            node.rvalue.right.name = self.localToGlobalMap[constName]

class AssignmentChecker(c_ast.NodeVisitor):
    mp = {}
    def visit_Assignment(self,node):
        if isinstance(node.lvalue,c_ast.ID):
            if node.lvalue.name in self.mp:
                print(f"{node.lvalue.name} instantiated twice")
            else:
                self.mp[node.lvalue.name] = True
