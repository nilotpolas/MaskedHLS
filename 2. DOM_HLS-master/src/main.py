# ----------------------------------------------------------------------------------------------------------#
#  main file working the parser that constructs the dfg for a dom-c function and makes it hls ready        #
# use: python3 ./main.py  --filename=../test/AES/DOM/Linear/input.c --useLinearAlgorithm=True --outputFilename=../test/AES/DOM/Linear/output.c
# ----------------------------------------------------------------------------------------------------------#
import argparse
import json
import os
import modules
from modules.AddRegVisitor import AddRegVisitor
from modules.CrossDomainOp import CrossDomainOp
from modules.GenerateDFG import GenerateDFG
from modules.GraphNode import ASTGraphNode, BaseGraphNode, TextGraphNode
from modules.MyCGenerator import MyCGenerator
from modules.Retime import RetimeDFG
import rustworkx as rx
from pycparser import parse_file, c_generator
import pycparser.c_ast as cast
from rustworkx.visualization import graphviz_draw
from modules.utils import add_dummy_node_fan_out, add_source_sink, extract_func_body, file_exists, generate_c_file, save_graph,checkBalancing
from modules.utils import noOfRegistersManually
import time



if __name__ == "__main__":
    argparser = argparse.ArgumentParser()
    argparser.add_argument('--filename',
                           default='./input.c',
                           nargs='?',
                           help='name of file to parse')
    argparser.add_argument('--outputFilename',
                           default='./output.c',
                           nargs='?',
                           help='name of the balanced design')
    argparser.add_argument('--useLinearAlgorithm',
                           default="True",
                           nargs='?',
                           help='name of the algorithm to be used')
    args = argparser.parse_args()

    file_exists(args.filename)

    start_time = time.time()
    ast = parse_file(args.filename, use_cpp=True)
    func_body = extract_func_body(ast)
    # print(ast)
    # assign_visitor = AddRegVisitor(domain_map)
    # assign_visitor.visit(ast)

    dfg_gen = GenerateDFG()
    dfg_gen.visit(ast)
    print("DFG generated")
    add_source_sink(dfg_gen.dfg)
    add_dummy_node_fan_out(dfg_gen.dfg,dfg_gen.nodesInfo,dfg_gen.nameIndexMap)
    print("Dummy node added")
    manualRegisters = noOfRegistersManually(dfg_gen.dfg)

#---------------------------------------------------------------------
    # checkBalancing(dfg_gen.dfg) # (uncomment this and comment all next)
#---------------------------------------------------------------
    # save_graph(dfg_gen.dfg, "graph.png")
    print("----------Nodes and edges------------")
    print(dfg_gen.dfg.num_nodes())
    print(dfg_gen.dfg.num_edges())
    print("-------------------------------------")
    useLinearAlgo = args.useLinearAlgorithm.lower()
    retimer = RetimeDFG(dfg_gen.dfg)
    retimer.set_source_sink_weight(useLinearAlgo)
    print("In here")
    retimer.update_retiming_labels()
    retimer.update_edge_weights()
    # retimer.printRetimedLabels()
    # retimer.printEdgeWeights()
    # save_graph(dfg_gen.dfg, "graph2.png")
    retimer.add_reg_calls(useLinearAlgo)
    print("No of registers if added levelwise: ",end="")
    print(manualRegisters)

    generate_c_file(ast,args.outputFilename)
    print("Execution Time")
    print("--- %s seconds ---" % (time.time() - start_time))