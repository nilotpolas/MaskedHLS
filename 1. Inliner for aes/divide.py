# from pycparser import parse_file, c_ast
# from binarytree import build
# from collections import deque

# def getBinaryTreeList(node):
#     if node.op == '=':
#         return getBinaryTreeList(node.rvalue)
    
#     treeList = []
#     queue = deque([node])
#     while queue:
#         currentNode = queue.popleft()
#         if isinstance(currentNode,c_ast.BinaryOp):
#             treeList.append(currentNode.op)
#             queue.append(currentNode.left)
#             queue.append(currentNode.right)
#         if isinstance(currentNode,c_ast.ID):
#             treeList.append(currentNode.name)

#     return treeList

# class AssignmentVisitor(c_ast.NodeVisitor):
#     def visit_Assignment(self,node):
#         treeList = getBinaryTreeList(node)
#         root = build(treeList)
#         graph = root.graphviz()
#         graph.render(outfile="out.png",format='png')
#         print(treeList)


# # Example usage:
# ast = parse_file('./test.c',use_cpp=True)
# # print(ast)
# visitor = AssignmentVisitor();
# visitor.visit(ast)
lst = []
lst.append([])
lst.append([])
print(lst)
print(len(lst))
lst[0].append(1)
lst[1].append(3)
print(lst)