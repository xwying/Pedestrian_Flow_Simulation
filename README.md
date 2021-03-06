# Pedestrian Flow Simulator
## 1.Introduction
This a pedestrian flow simulator based on [CA(Cellula Automaton)](https://en.wikipedia.org/wiki/Cellular_automaton) theory written in Matlab. It can be used to dynamically simulate the pedestrian flow in an enclosed area and generate a real-time animation.

## 2.How to use
This program does not support importing map from file (I didn't finish this function since I was pretty busy at that time), so we have to initialize the input manually. Here is an [example input file](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Example_Input.xlsx), this example is a map of an metro platform. In this map, pedestrians are coming to platfrom from trains, and leaving the platfrom by exits.

### 2.1.Explainations of symbols
Check [Example_Input.xlsx](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Example_Input.xlsx), you can see an matrix composed by number 0-4.
+ 0: Empty space.
+ 1: Pedestrians(they will also be generated from entrance. In this example, there is no pedestrian at the beginning).
+ 2: Exits.
+ 3: Walls. 
+ 4: Entrances. In this map, it represents the doors of the cars.

### 2.2 Create map in Matlab
To initialize the map in Matlab, you need to:

1. Convert your map into matrix using symbols shown above. For testing purpose, try to use my example input matrix.

2. Open CA.m in matlab. 

3. Create an matrix named "Platform1" in workspace, copy and paste the example map into the "Platform1" matrix

### 2.3 Test the program
Now you can try to run the program, if everything went well, you will see a dynamic figure shows the real-time pedestrian flow. Your animation should look like these:

![Picture1](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Example_output/Picture1.png)
![Picture2](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Example_output/Picture2.png)

## 3.Build your own map
You can build your own map to solve your specific problem. Here are some tips for you to build your own map.
+ Follow the symbols explainations to build your map.
+ It is recommended to build your map in an enclosed area. If it is not enclosed, the program will still runs, but it might not be able to evaluate the pedestrian flow correctly.
+ If there is no pedestrian in the map at the beginning, you have to include entrances in the map.
+ You have to include at least one exit in the map.

## 4.Program Flowchart & Contact Information
Most of comments in this program were written in Chinese, I'm sorry if it doesn't display due to the difference of environment. I post the flowchart of the program [here](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Flowchart.png).
