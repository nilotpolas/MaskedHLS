import rustworkx as rx
from rustworkx.visualization import graphviz_draw

from modules.GraphNode import ASTGraphNode, TextGraphNode
from modules.Retime import RetimeDFG
if __name__ == "__main__":
    dfg = rx.PyDiGraph()
    node1 = dfg.add_node(TextGraphNode("Source"))
    node2 = dfg.add_node(TextGraphNode("Sink"))
    node3 = dfg.add_node(TextGraphNode("3", 1))
    node4 = dfg.add_node(TextGraphNode("4"))
    node5 = dfg.add_node(TextGraphNode("Dummy", 1))
    dfg.add_edge(node3, node5, 0)
    dfg.add_edge(node5, node2, 0)
    dfg.add_edge(node2, node1, 0)
    dfg.add_edge(node1, node3, 0)
    dfg.add_edge(node1, node4, 0)
    dfg.add_edge(node4, node2, 0)
    retimer = RetimeDFG(dfg)
    retimer.set_source_sink_weight()
    retimer.set_w_d_matrix()
    retimer.create_constraint_graph()
    retimer.save_constraint_graph()
    retimer.solve_constraint_graph()
    fig = graphviz_draw(dfg, node_attr_fn=lambda n: {"label": n.label()})
    fig.save('graph2.png')
    fig = graphviz_draw(dfg)
    fig.save('graph.png')
