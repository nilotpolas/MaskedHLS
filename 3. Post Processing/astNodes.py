from pycparser import c_ast
import globalVariables

def getRegFuncCallNode(name):
     node = c_ast.FuncCall(name=c_ast.ID(name='reg'),args=c_ast.ExprList(exprs=[c_ast.ID(name=name)]))
     return node

def getLeftOrRightNodeOfAssignment(operand):
        if operand.startswith("v_reg"):
            node = getRegFuncCallNode(operand[6:])
        elif operand.startswith("v_neg"):
             node = c_ast.UnaryOp(op='!',expr=c_ast.ID(name=operand[6:]))
        else:
            node = c_ast.ID(name=operand)
        return node

def getSimpleAssignmentNode(lvalue,rvalue):
     return c_ast.Assignment(op='=',lvalue=c_ast.ID(name=lvalue),rvalue=rvalue)

def getAssignmentNode(operands,operator,varToAssign):
    left = None
    right = None
    rvalue = None

    left = getLeftOrRightNodeOfAssignment(operands[0])
    if len(operands) > 1:
        right = getLeftOrRightNodeOfAssignment(operands[1])
    
    if right is not None:
        rvalue = c_ast.BinaryOp(op=operator,left=left,right=right)
    else:
        rvalue = left
    
    return c_ast.Assignment(op="=",lvalue=c_ast.ID(name=varToAssign),rvalue=rvalue)

def getDeclarationNode(idName):
    # print(globalVariables.globalType)
    typeDeclNode = c_ast.TypeDecl(declname = idName,quals = [],align = None,
                                                type=c_ast.IdentifierType(names=[globalVariables.globalType]))
    declNode = c_ast.Decl(name=idName, quals=[], storage=[], funcspec=[],
                type=typeDeclNode, init=None,
                bitsize=None, align=[])
    return declNode