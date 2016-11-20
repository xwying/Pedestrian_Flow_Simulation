# Pedestrian Flow Simulation Program
## 1.Introduction
This program was written in Matlab, and it is used to dynamically simulate the pedestrian flow in an enclosed are. It is based on [CA(Cellula Automaton)](https://en.wikipedia.org/wiki/Cellular_automaton) theory, and the output is real-time animation.

## 2.How to use
This program does not support importing map from outer file (I failed to finish this function since I was pretty busy at that time), so we have to initialize the input manually. Here is an [example input file](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Example_Input.xlsx), this example is a map of an metro platform. In this map, pedestrians are coming to platfrom from trains, and leave the platfrom by exits.

Check this .xlsx file, you can see an matrix composed by number 0-4.
+ Number 0 stands for empty space.
+ Number 1 stands for pedestrians(they will also be generated from entrance. In this example, there is no pedestrian at the beginning).
+ Number 2 stands for exits.
+ Number 3 stands for walls, which can not be entered.
+ Number 4 stands for entrance, in this map, it symbolize the door on the cars.
