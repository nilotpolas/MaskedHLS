import modules
from abc import ABC, abstractmethod
from modules.MyCGenerator import MyCGenerator


class BaseGraphNode(ABC):
    def __init__(self, node_weight=0) -> None:
        super().__init__()
        self.node_weight = node_weight

    @abstractmethod
    def label(self) -> str:
        pass

    @abstractmethod
    def node_attr(self) -> dict:
        pass


class TextGraphNode(BaseGraphNode):
    def __init__(self, node_text, node_weight=0) -> None:
        super().__init__(node_weight)
        self.node_text = node_text

    def label(self) -> str:
        return self.node_text

    def node_attr(self) -> dict:
        fillcolor = "yellow"
        if (self.node_text == "Dummy"):
            fillcolor = "cyan"
        return {"label": f"{self.node_text} , {self.node_weight}", "style": "filled", "fillcolor": fillcolor}


class ASTGraphNode(BaseGraphNode):
    def __init__(self, ast, node_weight=0) -> None:
        super().__init__(node_weight)
        self.ast = ast

    def label(self) -> str:
        generator = MyCGenerator()
        return generator.visit(self.ast)

    def node_attr(self) -> dict:
        return {"label": f"{self.label()} , {self.node_weight}"}
