import rustworkx as rx
from modules.GraphNode import ASTGraphNode, TextGraphNode
from rustworkx.visualization import graphviz_draw
from collections import deque
from pycparser import c_ast
from modules.Visitor import AddRegs
from modules.utils import get_func_call_ast


class RetimeDFG():
    def __init__(self, dfg: rx.PyDiGraph, debug: bool = False) -> None:
        self.dfg = dfg
        self.w_matrix = None
        self.m_matrix = None
        # Create constraint graph and add N+1 nodes to it
        self.constraint_graph = rx.PyDiGraph()
        num_nodes = self.dfg.num_nodes()
        self.constraint_graph.add_nodes_from(range(num_nodes+1))
        self.target_period = 1
        self.solution = {}
        self.retimed_design = None
        self.debug = debug
        self.feasibilityConstraints = 0
        self.criticalPathConstraints = 0
        self.maxPathWeight = 0

    @staticmethod
    def get_source_index(dfg: rx.PyDiGraph) -> int:
        # print(dfg.node_indices())
        for node_idx in dfg.node_indices():
            node = dfg[node_idx]
            
            if (isinstance(node, TextGraphNode) and node.label() == 'Source'):
                source_index = node_idx
        return source_index
    
    
    def isSourceNode(self,node):
        return isinstance(node,TextGraphNode) and node.label() == "Source"
    
    def isSinkNode(self,node):
        return isinstance(node,TextGraphNode) and node.label() == "Sink"
    
    @staticmethod
    def get_sink_index(dfg: rx.PyDiGraph) -> int:
        for node_idx in dfg.node_indices():
            node = dfg[node_idx]
            if (isinstance(node, TextGraphNode) and node.label() == 'Sink'):
                sink_index = node_idx
        return sink_index
    
    def printRetimedLabels(self):
        print(self.solution)
        # for key in self.solution:
        #     print(str(self.dfg[key].label())+ " ----> " + str(self.solution[key]))

    def is_dummy_node(self, node_index):
        node = self.dfg[node_index]
        return isinstance(node, TextGraphNode) and node.node_text == 'Dummy'

    def set_source_sink_weight(self,useLinearAlgorithm):
        num_nodes = self.dfg.num_nodes()
        source_index = RetimeDFG.get_source_index(self.dfg)
        sink_index = RetimeDFG.get_sink_index(self.dfg)
        
        self.dfg.remove_edge(sink_index,source_index)
        max_path_weights = [0 for index in range(num_nodes)]
        sortedNodeList = rx.topological_sort(self.dfg)
        for nodeIndex in sortedNodeList:
            inEdges = self.dfg.in_edges(nodeIndex)
            maxWeightTillNode = 0
            for inEdge in inEdges:
                maxWeightTillNode = max(max_path_weights[inEdge[0]],maxWeightTillNode)
            if self.is_dummy_node(nodeIndex):
                maxWeightTillNode += 1
            max_path_weights[nodeIndex] = maxWeightTillNode
        max_path_weight = max(max_path_weights)
        print("Max path weight " + str(max_path_weight))
        self.maxPathWeight = max_path_weight
        if useLinearAlgorithm == "false":
            self.dfg.add_edge(sink_index,source_index,max_path_weight)
            self.dfg.update_edge(sink_index, source_index, max_path_weight)
        if useLinearAlgorithm == "true":
            print("useLineAlgo from set_source_sink_weight")
            self.solution[source_index] = -max_path_weight
            self.solution[sink_index] = 0
            # self.dfg.remove_edge(sink_index,source_index)
    # def set_source_sink_weight(self,useLinearAlgorithm):
    #     num_nodes = self.dfg.num_nodes()
    #     source_index = RetimeDFG.get_source_index(self.dfg)
    #     sink_index = RetimeDFG.get_sink_index(self.dfg)
    #     all_paths_source_sink = rx.all_simple_paths(
    #         self.dfg, source_index, sink_index)
    #     max_path_weight = 0
    #     for path in all_paths_source_sink:
    #         path_weight_sum = sum(
    #             self.dfg[node_index].node_weight
    #             # if not self.is_dummy_node(node_index)
    #             # else 0
    #             for node_index in path
    #         )
    #         max_path_weight = max(max_path_weight, path_weight_sum)
    #     self.dfg.update_edge(sink_index, source_index, max_path_weight)
    #     print("Max path weight : " + str(max_path_weight))
    #     if useLinearAlgorithm == "true":
    #         print("useLineAlgo from set_source_sink_weight")
    #         self.solution[source_index] = -max_path_weight
    #         self.solution[sink_index] = 0
    #         self.dfg.remove_edge(sink_index,source_index)

    def update_retiming_labels(self):
        sourceIndex = self.get_source_index(self.dfg)
        #--------Level Order Here---------------
        
        #----------Topological sort here--------------
        sortedNodeList = rx.topological_sort(self.dfg)
        for nodeIndex in sortedNodeList:
            if(nodeIndex != sourceIndex):
                inEdges = self.dfg.in_edges(nodeIndex)
                
                if(len(inEdges) > 1):
                    mn = 1e8
                    for edge in inEdges:
                        mn = min(mn,abs(self.solution[edge[0]]))
                    self.solution[nodeIndex] = -mn
                else:
                    edge = inEdges[0]
                    if self.is_dummy_node(nodeIndex):
                        self.solution[nodeIndex] = -(abs(self.solution[edge[0]]) - 1)
                    else:
                        self.solution[nodeIndex] = self.solution[edge[0]]

    def printEdgeWeights(self):
        edges = self.dfg.weighted_edge_list()
        for edge in edges:
            print(self.dfg[edge[0]].label() + "------->" + self.dfg[edge[1]].label() + " : " + str(edge[2]))
            
    def update_edge_weights(self):
        edges = self.dfg.edge_list()
        for edge in edges:
            edgeWeight = abs(self.solution[edge[0]] - self.solution[edge[1]])
            self.dfg.update_edge(edge[0],edge[1],edgeWeight)

    def get_path_edge_sum(self, path: rx.NodeIndices) -> int:
        path_len = len(path)
        sum = 0
        for i in range(path_len-1):
            sum += self.dfg.get_edge_data(path[i], path[i+1])
        return sum

    def print_matrix(self, mat):
        rows = len(mat)
        for i in range(rows):
            print(mat[i])
        print()

    def add_feasibility_constraint(self, edge):
        self.feasibilityConstraints += 1
        source = edge[0]
        dest = edge[1]
        edge_weight = self.dfg.get_edge_data(source, dest)
        if (self.debug):
            print(
                f"Adding feasibility constraint from {dest} and {source} with weight {edge_weight}")
        self.constraint_graph.add_edge(dest, source, edge_weight)

    def add_critical_path_constraint(self, source, dest):
        self.criticalPathConstraints += 1
        inequality_rhs = self.w_matrix[source][dest] - 1
        if (self.debug):
            print(
                f"Adding critical path constraint from {dest} and {source} with weight {inequality_rhs}")
        self.constraint_graph.add_edge(dest, source, inequality_rhs)

    def save_constraint_graph(self):
        fig = graphviz_draw(self.constraint_graph, method="sfdp")
        fig.save("constraint.png")
        fig = graphviz_draw(self.dfg, method="sfdp")
        fig.save("graph2.png")

    def solve_constraint_graph(self):
        has_no_solution = rx.negative_edge_cycle(
            self.constraint_graph, lambda e: e)
        if (has_no_solution):
            print("Constraint graph has negative edge cycle")
            neg_cycle = rx.find_negative_cycle(
                self.constraint_graph, lambda e: e)
            if (self.debug):
                print(neg_cycle)
            return
        else:
            num_nodes = self.dfg.num_nodes()
            solution = rx.bellman_ford_shortest_path_lengths(
                self.constraint_graph, num_nodes, lambda e: e)
            print('Solved constraint graph')
            if (self.debug):
                print(solution)
            self.solution = solution

    def calculate_retimed_design(self):
        retimed_dfg = self.dfg.copy()
        original_edges = self.dfg.weighted_edge_list()
        for original_edge in original_edges:
            source = original_edge[0]
            dest = original_edge[1]
            original_weight = original_edge[2]
            new_weight = self.solution[dest] - \
                self.solution[source] + original_weight
            assert (int(new_weight) == new_weight)
            retimed_dfg.update_edge(source, dest, int(new_weight))
        self.retimed_design = retimed_dfg
    
    def insertRegCallsInAssignment(self,node,count):
        currNode = node
        for _ in range(count):
            currNode = get_func_call_ast('reg',currNode)
        return currNode
    
    def getNodeToAddRegCalls(self,idToFind,currNode):
        if isinstance(currNode,c_ast.ID):
            if idToFind == currNode.name:
                return currNode
            else:
                return None
        if isinstance(currNode,c_ast.FuncCall):
            return self.getNodeToAddRegCalls(idToFind,currNode.args.exprs[0])
        if isinstance(currNode,c_ast.BinaryOp):
            left = self.getNodeToAddRegCalls(idToFind,currNode.left)
            right = self.getNodeToAddRegCalls(idToFind,currNode.right)
            if left is not None:
                return left
            if right is not None:
                return right
    
    def add_reg_calls(self,useLinearAlgorithm):
        dfgToUse : rx.PyDiGraph
        if(useLinearAlgorithm == "false"):
            self.dfg.remove_edge(RetimeDFG.get_sink_index(self.dfg),RetimeDFG.get_source_index(self.dfg))
            dfgToUse = self.retimed_design
            dfgToUse.remove_edge(self.get_sink_index(dfgToUse),self.get_source_index(dfgToUse))
        else:
            dfgToUse = self.dfg
        sortedNodeList = rx.topological_sort(dfgToUse)
        
        for node in sortedNodeList:
            label = dfgToUse[node].label() #label has all assignement statements like: y2_G256_newbasis1 = ny2_G256_newbasis1 + tempyIntoNegCond2_G256_newbasis1
            inEdges = dfgToUse.in_edges(node)
            
            if self.is_dummy_node(node) or self.isSourceNode(dfgToUse[node]):
                continue
            if self.isSinkNode(dfgToUse[node]):
                for edge in inEdges:
                    src = None
                    weight = 0
                    if self.is_dummy_node(edge[0]):
                        inEdge = dfgToUse.in_edges(edge[0])[0]
                        src = dfgToUse[inEdge[0]].ast
                        weight = edge[2] + inEdge[2] - 1 # if dummy node drop one register here
                    else:
                        src = dfgToUse[edge[0]].ast
                        weight = edge[2] # if not dummy do not drop any registers and propagate all registers

                    src.rvalue = self.insertRegCallsInAssignment(src.rvalue,edge[2])
                continue

            for edge in inEdges:
                weight = 0
                inNode = None
                if self.is_dummy_node(edge[0]):
                    inEdgeDummy = dfgToUse.in_edges(edge[0])[0]
                    weight = inEdgeDummy[2] + edge[2] - 1
                    inNode = dfgToUse[inEdgeDummy[0]].ast.lvalue
                elif self.isSourceNode(dfgToUse[edge[0]]):
                    dfgToUse[node].ast.rvalue = self.insertRegCallsInAssignment(dfgToUse[node].ast.rvalue,edge[2])
                    continue
                else:
                    weight = edge[2]
                    inNode = dfgToUse[edge[0]].ast.lvalue
                idToFind = inNode.name if isinstance(inNode,c_ast.ID) else inNode.expr.name
                currNode = dfgToUse[node].ast
                nodeToAddRegCalls = self.getNodeToAddRegCalls(idToFind,currNode.rvalue)
                changedNode = self.insertRegCallsInAssignment(nodeToAddRegCalls,weight)
                visitor = AddRegs(changedNode,idToFind)
                visitor.visit(dfgToUse[node].ast)
                if isinstance(currNode.rvalue,c_ast.ID):
                    currNode.rvalue = changedNode

        # for edge in retimed_weights:
        #     source = self.dfg[edge[0]]
        #     dest = self.dfg[edge[1]]
        #     weight = edge[2]
        #     if (weight >= 1):
        #         if self.is_dummy_node(edge[0]) or self.is_dummy_node(edge[1]):
        #             weight -= 1
        #         for index in range(weight):
        #             if (isinstance(source, ASTGraphNode)):
        #                 source.ast.rvalue = get_func_call_ast(
        #                     'reg', source.ast.rvalue)
        #             elif (isinstance(dest, ASTGraphNode)):
        #                 dest.ast.rvalue = get_func_call_ast('reg', dest.ast.rvalue)

    def create_constraint_graph(self):
        edge_list = self.dfg.edge_list()
        for edge in edge_list:
            self.add_feasibility_constraint(edge)
        num_nodes = self.dfg.num_nodes()
        for i in range(num_nodes):
            for j in range(num_nodes):
                d_u_v = self.d_matrix[i][j]
                w_u_v = self.w_matrix[i][j]
                if (d_u_v > self.target_period):
                    self.add_critical_path_constraint(i, j)
        for i in range(num_nodes):
            self.constraint_graph.add_edge(num_nodes, i, 0)

    # def set_w_d_matrix(self):
    #     num_nodes = self.dfg.num_nodes()
    #     self.w_matrix = [[0 for i in range(num_nodes)]
    #                      for j in range(num_nodes)]
    #     self.d_matrix = [[0 for i in range(num_nodes)]
    #                      for j in range(num_nodes)]
    #     all_pair_paths = rx.all_pairs_all_simple_paths(self.dfg)
    #     for source in all_pair_paths:
    #         for dest in all_pair_paths[source]:
    #             all_path_w = []
    #             all_path_d = []
    #             for path in all_pair_paths[source][dest]:
    #                 all_path_w.append(self.get_path_edge_sum(path))
    #                 path_d = sum(
    #                     self.dfg[node_index].node_weight for node_index in path)
    #                 all_path_d.append(path_d)
    #             self.w_matrix[source][dest] = min(all_path_w)
    #             d_max = 0
    #             for i in range(len(all_path_d)):
    #                 if (all_path_w[i] == self.w_matrix[source][dest]):
    #                     d_max = max(d_max, all_path_d[i])
    #             self.d_matrix[source][dest] = d_max
    #     for node_index in range(num_nodes):
    #         self.d_matrix[node_index][node_index] = self.dfg[node_index].node_weight

    #     if (self.debug):
    #         self.print_matrix(self.d_matrix)
    #         self.print_matrix(self.w_matrix)
            
    def set_w_d_matrix(self):
        num_nodes = self.dfg.num_nodes()
        num_paths = 0
        self.w_matrix = [[0 for i in range(num_nodes)]
                         for j in range(num_nodes)]
        self.d_matrix = [[0 for i in range(num_nodes)]
                         for j in range(num_nodes)]
        all_pair_paths = rx.all_pairs_all_simple_paths(self.dfg)
        for source in all_pair_paths:
            for dest in all_pair_paths[source]:
                all_path_w = []
                all_path_d = []
                num_paths += len(all_pair_paths[source][dest])
                
                for path in all_pair_paths[source][dest]:
                    all_path_w.append(self.get_path_edge_sum(path))
                    path_d = sum(self.dfg[node_index].node_weight for node_index in path)
                    all_path_d.append(path_d)
                self.w_matrix[source][dest] = min(all_path_w)
                d_max = 0
                for i in range(len(all_path_d)):
                    if (all_path_w[i] == self.w_matrix[source][dest]):
                        d_max = max(d_max, all_path_d[i])
                self.d_matrix[source][dest] = d_max
        for node_index in range(num_nodes):
            self.d_matrix[node_index][node_index] = self.dfg[node_index].node_weight
        print("########## paths ###########")
        print(num_paths)
        if (self.debug):
            self.print_matrix(self.d_matrix)
            self.print_matrix(self.w_matrix)