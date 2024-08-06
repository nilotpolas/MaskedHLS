import pycparser.c_ast as cast
from pycparser import c_generator
import rustworkx as rx
import modules
from modules.FindIdentifier import FindIdentifier
from modules.GraphNode import ASTGraphNode
from modules.utils import is_reg_call,extract_left_and_right_operands,constructOperandMap


class GenerateDFG(cast.NodeVisitor):
    """A data flow graph generator for C code.

    This class uses the PyCParser library to visit the abstract syntax tree of C
    code and generate a directed graph that represents the data flow between
    variables in the code.

    Attributes:
        dfg (rx.PyDiGraph): A directed graph representing the data flow between
            variables in the visited code.
        gen (c_generator.CGenerator): A code generator used to generate string
            representations of nodes in the graph.
    """

    def __init__(self):
        """Initializes a new instance of the GenerateDFG class.
        """
        self.dfg = rx.PyDiGraph()
        self.gen = c_generator.CGenerator()
        self.id_name = FindIdentifier()
        self.nodesInfo = {}
        self.nameIndexMap = {}
        super().__init__()

    
    def fillInputRegisters(self,operands):
        inputRegisters = []
        for op in operands:
            if(op["isInputReg"]):
                inputRegisters.append(op["name"])
        return inputRegisters
    

    def visit_Assignment(self, node):
        """
        Visits an assignment node in the abstract syntax tree.

        This method adds a node to the graph representing the assignment and
        connects it to other nodes in the graph based on data flow dependencies.

        Args:
            node (cast.Assignment): An assignment node to visit.
        """
        curr_index = self.dfg.add_node(ASTGraphNode(node))
        existing_nodes = self.dfg.node_indices()
        if isinstance(node.lvalue,cast.UnaryOp):
            self.nameIndexMap[node.lvalue.expr.name] = curr_index
        else:
            self.nameIndexMap[node.lvalue.name] = curr_index

        if isinstance(node.rvalue,cast.Constant):
            self.nodesInfo[curr_index] = {
                'hasOutputRegister' : False,
                'inputRegisters' : []
            }
        else:
            curr_left = None
            curr_right = None
            if is_reg_call(node.rvalue) and isinstance(node.rvalue.args.exprs[0],cast.ID):
                operands = [constructOperandMap(True,node.rvalue.args.exprs[0].name)]
                hasOutputRegister = False
            else:
                operands = extract_left_and_right_operands(node.rvalue)
                hasOutputRegister = is_reg_call(node.rvalue)
            if not isinstance(operands,list):
                operands = [operands]

            curr_left = cast.ID(operands[0]["name"])
            if(len(operands) == 2):
                curr_right = cast.ID(operands[1]["name"])
            
            self.nodesInfo[curr_index] = {
                'hasOutputRegister' : hasOutputRegister,
                'inputRegisters' : self.fillInputRegisters(operands)
            };
            
            for node_index in existing_nodes:
                if (node_index == curr_index):
                    continue
                old_item = self.dfg[node_index].ast
                if curr_left is not None:
                    if (self.id_name.name(old_item.lvalue) == self.id_name.name(curr_left)):
                        self.dfg.add_edge(node_index, curr_index, 0)
                        # print(
                        #     f"Adding edge (2) between {self.gen.visit(node)} and {self.gen.visit(old_item)}")
                if curr_right is not None:
                    if (self.id_name.name(old_item.lvalue) == self.id_name.name(curr_right)):
                        self.dfg.add_edge(node_index, curr_index, 0)
                        # print(
                        #     f"Adding edge (2) between {self.gen.visit(node)} and {self.gen.visit(old_item)}")                
