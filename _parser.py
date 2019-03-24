import re
import operator
import time
import matplotlib.pyplot as plt
import numpy as np
import math
import itertools
import random
import collections
from basic_classes import BayesNet, updateTuple, globalize

Node = collections.namedtuple(
    'Node', 'ord id name values position label category parents childnum')


class DSC_parser:
    def __init__(self, filename):
        self.input = open(filename, "r").read()
        self.nodes = {}
        self.cpts = {}
        self.BayesNet = BayesNet()
        self.jointDist = None

    def fetch_value(self, string, index):
        try:
            return re.search(index+r'[\s]*[:=][\s]*"?([^"]*?)"?[\s]*;', string, re.M | re.I | re.S).groups()[0]
        except:
            return None

    def create_prob_dist(self, values, probs):
        prob_dict = {}
        count = 0
        for v in values:
            prob_dict[v] = probs[count]
            count += 1
        return prob_dict


    def parse_nodes(self):
        node_str = re.findall(
            r'(node [^\{]*?\{[^\{]*?\{[^\}]*?\}[^\}]*?\})([\s]*?)', self.input, re.M | re.I | re.S)
        nodes = []
        count = 0
        for r in node_str:
            r = r[0]
            _id = re.search(
                r'node[\s]*([^\n\{\s]*)', r, re.M | re.I).groups()[0]
            name = self.fetch_value(r, 'name')
            try:
                values_str = re.search(
                    r'[;\{][\s]*?(type[^\{]*?:[^\{]*?\{[^\}]*?\};)', r, re.M | re.I).groups()[0]
                values = re.findall(r'"([^"]*?)",?', values_str, re.M | re.I)
            except:
                values_str = None
                values = [' ', ' ']
            try:
                position = eval(self.fetch_value(r, 'position'))
            except:
                position = None
            label = self.fetch_value(r, 'label')
            category = self.fetch_value(r, 'category')
            nodes.append(Node(count, _id, name, values,
                            position, label, category, [], [0]))
            count += 1
        self.nodes = {n.id: n for n in nodes}


    def parse_probabilities(self):
        prob_str = re.findall(
            r'(probability[^\{]*?\{[^\}]*?\})([\s]*)', self.input, re.M | re.I | re.S)
        for r in prob_str:
            r = r[0]
            var_name = re.search(
                r'probability[\s]*\([\s]*([^\s\)]*)[\s]*', r, re.M | re.I).groups()[0]
            try:
                par_names = re.search(
                    var_name+r'[\s]*\|[\s]*(.*?)[\s]*\)', r, re.M | re.I).groups()[0].split(',')
                par_names = [s.strip() for s in par_names]
                self.nodes[var_name] = updateTuple(
                    self.nodes[var_name], "Node", {"parents": par_names})
                for p in par_names:
                    self.nodes[p].childnum[0] += 1
            except:
                par_names = []
            if (par_names):
                lines = re.findall(r'\([0-9, ]*?\)[^;]*;', r, re.M | re.I)
                cpt = {}
                for l in lines:
                    par_vals = eval(
                        re.search(r'\([^\)]*?\)', l, re.M | re.I)[0])
                    new_par_vals = []
                    count = 0
                    if len(par_names) > 1:
                        for p in par_names:
                            new_par_vals.append(
                                self.nodes[p].values[par_vals[count]])
                            count += 1
                    else:
                        new_par_vals.append(
                            self.nodes[par_names[0]].values[par_vals])
                    par_vals = tuple(new_par_vals)
                    prob_vals = re.search(
                        r':([^;]*?);', l, re.M | re.I).groups()[0].split(",")
                    prob_vals = [float(p.strip())/100 for p in prob_vals]
                    if sum(prob_vals) == 0:
                        prob_vals = [1/len(prob_vals) for p in prob_vals]
                    cpt[par_vals] = self.create_prob_dist(
                        self.nodes[var_name].values, prob_vals)
                self.cpts[var_name] = cpt
            else:
                lines = re.findall(r'[0-9]+\.?[0-9]*', r, re.M | re.I)
                self.cpts[var_name] = {(): self.create_prob_dist(
                    self.nodes[var_name].values, [float(l)/100 for l in lines])}


    def create_BayesNet(self):
        self.parse_nodes()
        self.parse_probabilities()
        assert len(self.nodes) == len(self.cpts)
        added_nodes = []
        sorted_nodes = [self.nodes[key] for key in self.nodes]
        node = sorted_nodes[0]
        self.BayesNet.add(node.id, node.parents, self.cpts[node.id])
        added_nodes.append(node.id)
        while len(added_nodes) != len(sorted_nodes):
            for node in sorted_nodes:
                if (not node.id in added_nodes) and (len([n for n in node.parents if n in added_nodes]) == len(node.parents)):
                    self.BayesNet.add(node.id, node.parents,
                                    self.cpts[node.id])
                    added_nodes.append(node.id)
        globalize(self.BayesNet.lookup)
        # self.jointDist = joint_distribution(self.BayesNet)