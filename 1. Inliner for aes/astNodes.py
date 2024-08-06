from pycparser import c_ast

def getSimpleAssignmentNode(lvalue,rvalue):
    return c_ast.Assignment(lvalue=c_ast.ID(name=lvalue),rvalue=c_ast.ID(name=rvalue),op='=')

def getConstAssignmentNode(lvalue,rvalue):
    return c_ast.Assignment(lvalue=c_ast.ID(name=lvalue),rvalue=c_ast.Constant(type="int",value=rvalue),op='=')

def getDeclarationNode(idName,type):
    typeDeclNode = c_ast.TypeDecl(declname = idName,quals = [],align = None,
                                                  type=c_ast.IdentifierType(names=[type]))
    declNode = c_ast.Decl(name=idName, quals=[], storage=[], funcspec=[],
                type=typeDeclNode, init=None,
                bitsize=None, align=[])
    return declNode