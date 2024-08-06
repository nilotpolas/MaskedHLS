from pycparser import c_generator
import pycparser.c_ast as cast

class MyCGenerator(c_generator.CGenerator):
    """
    A customized C code generator that supports a custom binary operation class.

    This class extends the `c_generator.CGenerator` class to support a custom binary operation class, `CrossDomainOp`, which is a
    subclass of `pycparser.c_ast.BinaryOp`. The `visit_CrossDomainOp()` method is overridden to properly generate code for this
    custom binary operation.
    """

    def visit_CrossDomainOp(self, node):
        """
        Visit method for `CrossDomainOp` nodes.

        This method overrides the default behavior of `visit_CrossDomainOp()` to properly generate code for `CrossDomainOp` nodes.
        It creates a new `pycparser.c_ast.BinaryOp` node with the same operator, left operand, and right operand as the input
        `CrossDomainOp` node. The new `BinaryOp` node is then visited and its corresponding C code is returned.

        Args:
            node (CrossDomainOp): The `CrossDomainOp` node to visit.

        Returns:
            str: The C code generated for the `CrossDomainOp` node.
        """
        cast_node = cast.BinaryOp(node.op, node.left, node.right)
        return self.visit(cast_node)