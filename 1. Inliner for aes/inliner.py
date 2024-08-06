
import sys
import json

from DiGraph import DiGraph
from Visitors import FunctionVisitor,DeclVisitor,ArrayValueReplacer,AssignmentChecker,ConstToVar
from utils import extractFunctionInfo,processDependantFunctions,generate_c_file,insertAssignmentsAndDeclForConstants

sys.path.extend(['.', '..'])

from pycparser import parse_file, c_ast

def pretty_print_dict(d):
    # take empty string
    pretty_dict = '' 
    
    # get items for dict
    for k, v in d.items():
        pretty_dict += f'{k}: \n'
        for value in v:
            pretty_dict += f'    {value}: {v[value]}\n'
        pretty_dict += f'\n*********************************************\n'
    
    # return result
    print(pretty_dict)

def mainInline(inputFile,outputFile,topModule):
    ast = parse_file(inputFile, use_cpp=True)
    arrMap = {}
    # print(ast)
    arrVisitor = DeclVisitor(arrayMap=arrMap,ast=ast)
    arrVisitor.visit(ast)
    functionGraph = DiGraph()
    functionInfo = {}

    for fDef in ast.ext:
        if isinstance(fDef,c_ast.FuncDef):
            functionGraph.addFunction(fDef.decl.name)
            visitor = FunctionVisitor(functionGraph,fDef.decl.name)
            visitor.visit(fDef)

    sortedList = functionGraph.topoSort()
    if topModule not in sortedList:
        print(f"No top module named {topModule} in given input file.")
        print("Note : The name of module is case sensitive")
        sys.exit(1)

    for function in sortedList:
        inDegree = functionGraph.getIndegreeOf(function)
        if inDegree == 0:
            for fDef in ast.ext[:]:
                if isinstance(fDef,c_ast.FuncDef) and fDef.decl.name == function:
                    extractFunctionInfo(fDef,functionInfo)
                    ast.ext.remove(fDef)
                    break
        
        elif function != topModule:
            for fDef in ast.ext[:]:
                if isinstance(fDef,c_ast.FuncDef) and fDef.decl.name == function:
                    processDependantFunctions(fDef,functionInfo,False)
                    extractFunctionInfo(fDef,functionInfo)
                    ast.ext.remove(fDef)
                    break
        else:
            for fDef in ast.ext[:]:
                if isinstance(fDef,c_ast.FuncDef) and fDef.decl.name == function:
                    processDependantFunctions(fDef,functionInfo,True)
    
    for fDef in ast.ext[:]:
        if isinstance(fDef,c_ast.Decl) and isinstance(fDef.type,c_ast.ArrayDecl):
            ast.ext.remove(fDef)
    # print(ast)
    # pretty_print_dict(functionInfo)
    constArr = []
    arrValueReplacer = ArrayValueReplacer(arrMap,constArr)
    arrValueReplacer.visit(ast)

    constToVar = ConstToVar()
    constToVar.visit(ast)
    insertAssignmentsAndDeclForConstants(ast,constArr)

    assignmentChecker = AssignmentChecker();
    assignmentChecker.visit(ast)
    generate_c_file(ast,outputFile)

if __name__ == "__main__":
    if len(sys.argv) == 4:
        mainInline(sys.argv[2],sys.argv[3],sys.argv[1])
    elif len(sys.argv) == 2:
        mainInline(sys.argv[2],"info.txt")
    else:
        # print("Use the following format : ")
        # print("python source.py top_module input_file.c output_file.c")
        # sys.exit(1)
        mainInline("test.c","output.c","sbox")