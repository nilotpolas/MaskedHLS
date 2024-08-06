from pycparser import c_ast
from blockHandlers import handleDeclBlock,handleAssignmentBlock,handleReturnBlock,handleFuncCallBlock
import sys

def writeVerilogToFile(funcName, functions, internalVariables, functionCalls, filename,type):
    width = " [31:0] " if type=='int' else " "
    with open(filename, 'a') as file:
        # Redirect print output to the file
        print("module " + funcName + "(", file=file)
        for ip in functions[funcName]["inputs"]:
            print("    " + ip + ",", file=file)
        for op in functions[funcName]["outputs"]:
            print("    " + op + ",", file=file)
        print(");", file=file)

        print("//INPUTS", file=file)
        for ip in functions[funcName]["inputs"]:
            if (ip=="clk"):
                print("    input " +ip + ";", file=file)
            else:
                print("    input " + width +ip + ";", file=file)

        print("//OUTPUTS", file=file)
        for op in functions[funcName]["outputs"]:
            if internalVariables[op]["type"] == "reg":
                print("    output reg " + width + op + ";", file=file)
            else:
                print("    output " + width + op + ";", file=file)

        # intermediate value decl
        print("//Intermediate values", file=file)
        for key in internalVariables.keys():
            if key not in functions[funcName]["outputs"]:
                print("    " + internalVariables[key]["type"] + width + key + ";", file=file)

        # wire assignments
        print("", file=file)
        for key in internalVariables.keys():
            if internalVariables[key]["type"] == "wire":
                print("    assign " + key + " = " + internalVariables[key]["value"] + ";", file=file)

        # reg assignments
        print("", file=file)
        if functions[funcName]["regPresent"] is True:
            print("    always @(posedge clk) begin", file=file)
            for key in internalVariables.keys():
                if internalVariables[key]["type"] == "reg":
                    print("        " + key + " <= " + internalVariables[key]["value"] + ";", file=file)
            print("    end", file=file)

        # module instantiations
        print("", file=file)
        for func_calls in functionCalls[funcName]:
            callee = func_calls["callee"]
            inst = func_calls["instanceName"]
            paramList = func_calls["paramList"]
            print("    " + callee + " " + inst + "(", end="", file=file)
            paramOrder = functions[callee]["paramOrder"]
            for i in range(len(paramOrder)):
                print("." + paramOrder[i] + "(" + paramList[i] + ")", end="", file=file)
                if i != len(paramOrder) - 1:
                    print(", ", end="", file=file)
                else:
                    print(");", file=file)

        print("endmodule", file=file)
        print("",file=file)


def processFunctions(functions,fDef,functionCalls,intermediateAssignments):
    regPresent = False
    function_decl = fDef.decl
    fName = function_decl.name
    functions[fName] = {
        "inputs" : [],
        "outputs" : [],
        "paramOrder" : [],
        "called" : 0,
        "regPresent" : False
    }
    functionCalls[fName] = []
    intermediateAssignments[fName] = {}

    defineInputsAndOutputs(fName,functions,function_decl)

    #type, value
    internalVariables = {}
    exp = ""
    function_body = fDef.body
    for node in function_body.block_items:
        if isinstance(node,c_ast.Decl) and node.init is not None:
            regPresent = handleDeclBlock(node,internalVariables)

        elif isinstance(node,c_ast.Assignment):
            regPresent = handleAssignmentBlock(node,internalVariables)

        elif isinstance(node,c_ast.Return):
            handleReturnBlock(node,internalVariables,functions,fName)

        elif isinstance(node,c_ast.FuncCall):
            handleFuncCallBlock(node,functions,fName,functionCalls,internalVariables)

        if(regPresent):
            functions[fName]["regPresent"] = regPresent
    intermediateAssignments[fName] = internalVariables
    
def defineInputsAndOutputs(fName,functions,function_decl):
    functions[fName]["inputs"].append("clk")
    functions[fName]["paramOrder"].append("clk")
    params = function_decl.type.args.params
    for param_decl in params:
        node = param_decl.type;
        if isinstance(node,c_ast.TypeDecl):
            functions[fName]["inputs"].append(node.declname)
            functions[fName]["paramOrder"].append(node.declname)
        else:
            functions[fName]["outputs"].append(node.type.declname)
            functions[fName]["paramOrder"].append(node.type.declname)
    if(function_decl.type.type.type.names[0] != "void"):
        print("Return type other than void not supported.")
        sys.exit(1)