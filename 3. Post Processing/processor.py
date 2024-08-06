# use: python3 processor.py --type=int > output.c for AES design
import sys
import json
import argparse
sys.path.extend(['.', '..'])


from pycparser import parse_file, c_ast
from utils import handleAssignmentNodes,changeBinaryOps,getNewVarName,isRegCall,generate_c_file
from astNodes import getDeclarationNode,getSimpleAssignmentNode
from Visitor import NegationVisitor,UnaryOpNodeChanger,BinaryOpInRegHandler,SourceRegHandler
import globalVariables

def postProcess(inputFile,outputFile):
    assgnNo = 1
    ast = parse_file(inputFile, use_cpp=True)
    bodyNodes = []
    with open('operatorName.json', 'r') as file:
        json_data = file.read()
    operatorNameMap = json.loads(json_data)

#handling unary ops
    negationVisitor = NegationVisitor(bodyNodes)
    negationVisitor.visit(ast)
    assgnNo = negationVisitor.assgnNo
    ast.ext[0].body.block_items = bodyNodes
    bodyNodes = []

    unaryOpNodeChanger = UnaryOpNodeChanger(negationVisitor.unaryVarToNameMap)
    unaryOpNodeChanger.visit(ast)

#handling source regs
    sourceRegHandler = SourceRegHandler(bodyNodes,assgnNo)
    sourceRegHandler.visit(ast)
    assgnNo = sourceRegHandler.assignNo
    ast.ext[0].body.block_items = bodyNodes
    bodyNodes = []

#handling nested reg binary op inside a reg call
    binaryOpInRegHandler = BinaryOpInRegHandler(bodyNodes,assgnNo)
    binaryOpInRegHandler.visit(ast)
    assgnNo = binaryOpInRegHandler.assignNo
    ast.ext[0].body.block_items = bodyNodes
    bodyNodes = []

#handling nested reg binary op
    for node in ast.ext[0].body.block_items:
        if not isinstance(node,c_ast.Assignment):
            bodyNodes.append(node)
        else:
            changeBinaryOps(node,bodyNodes,assgnNo)
            assgnNo += 2
    ast.ext[0].body.block_items = bodyNodes
    # # print(ast)

    bodyNodes = []
    for node in ast.ext[0].body.block_items:
        if not isinstance(node,c_ast.Assignment):
            bodyNodes.append(node)
        else:
            handleAssignmentNodes(node,bodyNodes,operatorNameMap,assgnNo)
            assgnNo += 2
    # print(bodyNodes)
    ast.ext[0].body.block_items = bodyNodes
    # print(ast)
    generate_c_file(ast,outputFile)


if __name__ == "__main__":
    global globalType
    argparser = argparse.ArgumentParser()
    argparser.add_argument('--type', default='_Bool')
    argparser.add_argument('--inputFile', default='test.c')
    argparser.add_argument('--outputFile', default='output.c')
    args = argparser.parse_args()
    globalVariables.globalType = args.type
    # print(globalVariables.globalType)

    postProcess(args.inputFile,args.outputFile)