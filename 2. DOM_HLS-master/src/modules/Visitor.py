from pycparser import c_ast

# class CountRegs(c_ast.NodeVisitor):
#     def __init__(self):
#         self.regCount = 0
#         self.registerAdded = {}
#     def visit_FuncCall(self,node):
#         if isinstance(node.args.exprs[0],c_ast.ID):
#             self.registerAdded[node.args.exprs[0].name] = True
#         else:
#             self.regCount += 1
#         self.generic_visit(node)

class AddRegs(c_ast.NodeVisitor):
    def __init__(self,changedNode,idToChange):
        self.changedNode = changedNode
        self.idToChange = idToChange
        
    def visit_FuncCall(self,node):
        # curr = node.args.exprs[0]
        if isinstance(node.args.exprs[0],c_ast.ID) and self.idToChange == node.args.exprs[0].name:
            node.args.exprs[0] = self.changedNode
            return
        self.generic_visit(node)

    def visit_BinaryOp(self,node):
        if isinstance(node.right,c_ast.ID) and self.idToChange == node.right.name:
            node.right = self.changedNode
            return
        if isinstance(node.left,c_ast.ID) and self.idToChange == node.left.name:
            node.left = self.changedNode
            return
        self.generic_visit(node)