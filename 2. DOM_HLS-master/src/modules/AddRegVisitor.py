import modules
from modules.CrossDomainOp import CrossDomainOp
import pycparser.c_ast as cast

from modules.FindIdentifier import FindIdentifier


class AddRegVisitor(cast.NodeVisitor):
    """
    A visitor class for adding register function calls to binary operations in an abstract syntax tree (AST).

    Args:
        domain_map (dict): A dictionary that maps variable names to their corresponding domains.

    The visitor adds a function call to the `reg()` function in the right-hand side (RHS) of the assignment expression,
    if a binary operation has operands with different domains.

    Attributes:
        domain_map (dict): A dictionary that maps variable names to their corresponding domains.
    """

    def __init__(self, domain_map):
        self.domain_map = domain_map
        self.id_name = FindIdentifier()
        self.cross_domains = []
        super().__init__()

    def visit_Assignment(self, node):
        """
        Visits an Assignment node of the AST and adds a function call to the `reg()`
        function in the right-hand side of the assignment expression if the operands of
        the binary operation have different domains.

        Args:
            node (pycparser.c_ast.Assignment): The Assignment node in the AST to visit.
        """
        # If RHS of assignment is a Binary Operation, extract operands and comparse domains
        if (isinstance(node.rvalue, cast.BinaryOp)):
            op_left = self.id_name.name(node.rvalue.left)
            op_right = self.id_name.name(node.rvalue.right)
            domain_left = self.domain_map.get(op_left)
            domain_right = self.domain_map.get(op_right)
            # If operands are of different domain, add function call to reg() in RHS
            if (domain_left != None and domain_right != None and domain_left != domain_right):
                self.cross_domains.append(node.lvalue.name)
                print(
                    f"Cross domain between {op_left} and {op_right}")
                node.rvalue = CrossDomainOp(
                    node.rvalue.op,
                    node.rvalue.left,
                    node.rvalue.right
                )
            elif node.rvalue.op == '^' and (op_left in self.cross_domains and domain_right == "random") or (op_right in self.cross_domains and domain_left == "random"):
                print(
                    f"Identified resharing of cross domain product: {op_left} ^ {op_right}")
                node.rvalue = CrossDomainOp(
                    node.rvalue.op,
                    node.rvalue.left,
                    node.rvalue.right
                )
        else:
            self.generic_visit(node)
