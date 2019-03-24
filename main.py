from _parser import *
import sys, os
#sys.path.append(os.path.abspath('../IA-trab2'))

pathfinder_parser = DSC_parser("Data/win95pts.dsc")
pathfinder_parser.create_BayesNet()
pathfinder = pathfinder_parser.BayesNet
print(pathfinder.lookup.values())


#prod = 1
#for x in [len(v.domain) for v in pathfinder.variables]:
#    prod *= x
#   print(prod)
