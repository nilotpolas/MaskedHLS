#assumptions:
##############################################################################################
# -- Unhandled sequentiality
# -- Handling bool
# manual effort: replace return type with void
#                use: python3 parser_1.py --type=int

import argparse
from pycparser import parse_file
from pycparser import c_ast
from utils import processFunctions,writeVerilogToFile

if __name__ == "__main__":
    argparser = argparse.ArgumentParser('Dump AST')
    argparser.add_argument('--filename',
                           default='./sbox.c',
                           nargs='?',
                           help='name of file to parse')
    argparser.add_argument('--coord', help='show coordinates in the dump',
                           action='store_true')
    argparser.add_argument('--type', default='bool')
    args = argparser.parse_args()
    functions = {}
    functionCalls = {}
    ast = parse_file('./sbox.c', use_cpp=True)
    # print(ast)
    intermediateAssignments = {}

    for fDef in ast.ext:
        if isinstance(fDef,c_ast.FuncDef):
            processFunctions(functions,fDef,functionCalls,intermediateAssignments)
    
    for fName in functions:
        writeVerilogToFile(fName,functions,intermediateAssignments[fName],functionCalls,"domand.v",args.type)
    #processForwardRefs()
        