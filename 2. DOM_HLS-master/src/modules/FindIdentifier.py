import pycparser.c_ast as cast


class FindIdentifier(cast.NodeVisitor):

    def __init__(self) -> None:
        super().__init__()
        self.identifier = None

    def visit_ID(self, node):
        self.identifier = node.name

    def name(self, ast):
        self.visit(ast)
        if (self.identifier == None):
            raise Exception(
                "FindIdentifier could not find any identifier in the ast")
        return self.identifier
