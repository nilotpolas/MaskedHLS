from collections import deque
from pycparser import c_ast
import copy

class DiGraph():
    def __init__(self):
        self.__inEdges = []
        self.__functionIndexMap = {}
        self.__indexFunctionMap = {}
        self.__adjacencyList = []
        self.numNodes = 0
    
    def addFunction(self,fName):
        if fName not in self.__functionIndexMap:
            self.__functionIndexMap[fName] = self.numNodes
            self.__indexFunctionMap[self.numNodes] = fName
            self.numNodes += 1
            self.__adjacencyList.append([])
            self.__inEdges.append(0)
    
    def addEdgeBetween(self,f1,f2):
        f1Index = self.__functionIndexMap[f1]
        f2Index = self.__functionIndexMap[f2]
        if f2Index not in self.__adjacencyList[f1Index]:
            self.__adjacencyList[f1Index].append(f2Index)
            self.__inEdges[f2Index] += 1
    
    def getIndegreeOf(self,fName):
        return self.__inEdges[self.__functionIndexMap[fName]]
    
    def topoSort(self):
        q = deque()
        inEdges = copy.deepcopy(self.__inEdges)
        for index in range(self.numNodes):
            if(inEdges[index] == 0):
                q.append(index)
        sortedList = []
        while q:
            node = q.popleft()
            sortedList.append(self.__indexFunctionMap[node])
            for adj in self.__adjacencyList[node]:
                inEdges[adj] -= 1
                if(inEdges[adj] == 0):
                    q.append(adj)
        return sortedList

