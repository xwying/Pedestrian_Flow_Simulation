# Pedestrian Flow Simulator
## 1.Introduction
This simulator was written in Matlab, and it is used to dynamically simulate the pedestrian flow in an enclosed area. It is based on [CA(Cellula Automaton)](https://en.wikipedia.org/wiki/Cellular_automaton) theory, and the output is real-time animation.

## 2.How to use
This program does not support importing map from outer file (I failed to finish this function since I was pretty busy at that time), so we have to initialize the input manually. Here is an [example input file](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Example_Input.xlsx), this example is a map of an metro platform. In this map, pedestrians are coming to platfrom from trains, and leaving the platfrom by exits.

### 2.1.Explainations of symbols
Check [Example_Input.xlsx](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Example_Input.xlsx), you can see an matrix composed by number 0-4.
+ Number 0 stands for empty space.
+ Number 1 stands for pedestrians(they will also be generated from entrance. In this example, there is no pedestrian at the beginning).
+ Number 2 stands for exits.
+ Number 3 stands for walls, which can not be entered.
+ Number 4 stands for entrance, in this map, it symbolize the door on the cars.

### 2.2 Create map in Matlab
Here is how you initialize the map in Matlab:
1. Convert your map into matrix using symbols shown above. For testing purpose, try to use my example input matrix.
2. Open CA.m in matlab. 
3. Create an matrix named "Platform1" in workspace, copy and paste the example map into the "Platform1" matrix

### 2.3 Test the program
Now you can try to run the program, if everything went well, you will see a dynamic figure shows the real-time pedestrian flow. Your animation should look like these:

![Picture1](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Example_output/Picture1.png)
![Picture2](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Example_output/Picture2.png)

## 3.Program Flowchart & Contact Information
Most of comments in this program were written in Chinese, I'm sorry if it doesn't display due to the difference of environment. I post the flowchart of the program [here](https://github.com/xwying/Pedestrian_Flow_Simulation/blob/master/Flowchart.png). If you have any problem or suggestion with this simulator, please feel free to contact [sslf@foxmail.com](sslf@foxmail.com)
