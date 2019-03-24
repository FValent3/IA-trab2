from _parser import *
import sys, os
#sys.path.append(os.path.abspath('../IA-trab2'))

pathfinder_parser = DSC_parser("Data/win95pts.dsc")
pathfinder_parser.create_BayesNet()
pathfinder = pathfinder_parser.BayesNet

# A classe de pathfinder BayasNet possui dois atributos um com as labels e outro um dicionario que uma das chaves e uma tabela de valores
# e so adequar e montar a arvore
