from pycparser import c_ast
from utils import isRegCall,getNewVarName,isNestedRegCall
from astNodes import getSimpleAssignmentNode,getDeclarationNode
import copy

class UnaryOpNodeChanger(c_ast.NodeVisitor):
    def __init__(self,unaryNodeMap):
        self.unaryNodeMap = unaryNodeMap
    
    def visit_BinaryOp(self,node):
        if isinstance(node.right,c_ast.UnaryOp):
            node.right = c_ast.ID(name=self.unaryNodeMap[node.right.expr.name])
            # self.generic_visit(node.left)
        if isinstance(node.left,c_ast.UnaryOp):
            node.left = c_ast.ID(name=self.unaryNodeMap[node.left.expr.name])
            # self.generic_visit(node.right)
        self.generic_visit(node)
    
    def visit_FuncCall(self,node):
        param = node.args.exprs[0]
        if isinstance(param,c_ast.UnaryOp):
            node.args.exprs[0] = c_ast.ID(name=self.unaryNodeMap[param.expr.name])
            return
        else:
            self.generic_visit(node)

class NegationVisitor(c_ast.NodeVisitor):
    def __init__(self,bodyNodes):
        self.bodyNodes = bodyNodes
        self.assgnNo = 1
        self.unaryVarToNameMap = {}

    def visit_FuncDef(self,node):
        self.generic_visit(node)

    def visit_Decl(self,node):
        if isinstance(node.type,c_ast.TypeDecl):
            self.bodyNodes.append(node)
        return
        
    def visit_Assignment(self,node):
        if isinstance(node.rvalue,c_ast.BinaryOp) or isRegCall(node.rvalue):
            self.generic_visit(node.rvalue)
            self.bodyNodes.append(node)
        else:
            self.bodyNodes.append(node)
            return

    def visit_UnaryOp(self,node):
        if node.expr.name in self.unaryVarToNameMap:
            return
        if node.op == '!' or node.op == '~':
            varName = getNewVarName(self.assgnNo)
            declNode = getDeclarationNode(varName)
            self.bodyNodes.append(declNode)
            assgnNode = getSimpleAssignmentNode(varName,node)
            self.bodyNodes.append(assgnNode)
            self.unaryVarToNameMap[node.expr.name] = varName
            self.assgnNo += 1

class BinaryOpInRegHandler(c_ast.NodeVisitor):
    def __init__(self,bodyNodes,assignNo):
        self.bodyNodes = bodyNodes
        self.assignNo = assignNo

    def visit_Decl(self,node):
        if isinstance(node.type,c_ast.TypeDecl):
            self.bodyNodes.append(node)
        return

    def visit_Assignment(self,node):
        if not isinstance(node.rvalue,c_ast.FuncCall):
            self.bodyNodes.append(node)
            return
        self.generic_visit(node)
        self.bodyNodes.append(node)
    
    def visit_FuncCall(self,node):
        currNode = node
        while isRegCall(currNode.args.exprs[0]):
            currNode = currNode.args.exprs[0]
        insideNode = currNode.args.exprs[0]
        if isinstance(insideNode,c_ast.BinaryOp):
            if isRegCall(insideNode.right) or isRegCall(insideNode.left):
                varName = getNewVarName(self.assignNo)
                self.assignNo += 2
                currNode.args.exprs[0] = c_ast.ID(name=varName)
                self.bodyNodes.append(getDeclarationNode(varName))
                self.bodyNodes.append(getSimpleAssignmentNode(lvalue=varName,rvalue=insideNode))

class SourceRegHandler(c_ast.NodeVisitor):
    
    def __init__(self,bodyNodes,assignNo):
        self.bodyNodes = bodyNodes
        self.assignNo = assignNo
        self.sourceRegMap = {}
    
    def visit_Decl(self,node):
        if isinstance(node.type,c_ast.TypeDecl):
            self.bodyNodes.append(node)
        return
    
    def visit_ID(self,node):
        if node.name in self.sourceRegMap:
            node.name = self.sourceRegMap[node.name]
    
    def visit_Assignment(self,node):
        if isinstance(node.lvalue,c_ast.ID) and node.lvalue.name.endswith("inp"):
            if isinstance(node.rvalue,c_ast.FuncCall) and not isinstance(node.rvalue.args.exprs[0],c_ast.FuncCall):
                nodeCopy = copy.deepcopy(node.rvalue)
                nodeCopy.args.exprs[0].name += "_inp"
                node.rvalue = c_ast.ID(name=node.lvalue.name[:-4])
                self.bodyNodes.append(node)
                varName = getNewVarName(self.assignNo)
                self.bodyNodes.append(getDeclarationNode(varName))
                self.bodyNodes.append(getSimpleAssignmentNode(varName,nodeCopy))
                self.assignNo += 2
                self.sourceRegMap[node.lvalue.name] = varName
            else:
                self.bodyNodes.append(node)
            return
        else:
            self.generic_visit(node)
            self.bodyNodes.append(node)
