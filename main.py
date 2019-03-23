from _parser import DSC_parser



pathfinder_parser = DSC_parser("alarm.dsc")
pathfinder_parser.create_BayesNet()
pathfinder = pathfinder_parser.BayesNet

prod = 1
for x in [len(v.domain) for v in pathfinder.variables]:
    prod *= x
print(prod)
