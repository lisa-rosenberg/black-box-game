# SoSe19_Padi02: BLACK BOX

## Proposal

### Motivation
This repository will contain an implementation of the logic board game "Black Box" in C++.
It's an abstract game which was designed by the mathematician Eric Solomon in the year 1976.

Today this board game is not well known.
I coincidentally learnt about it on the 35C3 event in Leipzig.
There were some people with a self-made electronic table for various board games, which worked with light receptors and LEDs.
One of the available games was Black Box.

![Black Box](resources/img/blackbox.jpg "Black Box")

An overview can be found [here](https://en.wikipedia.org/wiki/Black_Box_\(game\)).

### Implementation Ideas
This board game will be implemented by using C++ and presumably OpenCV.

At first I will implement the basic game with the basic rule set.
That is 3-5 atoms in a two-dimensional grid (8x8).


## Game

### Objective
Black Box is played on a two-dimensional grid.
The objective is to find the correct positions of the atoms by the use of the minimum number of rays.

### Rules

#### General
The most common configuration is 3-5 atoms in a 8x8 grid.
There are in total 32 input/output positions for the rays.

In this implementation the computer will hide the correct position of the atoms.
The player has to place the known number of atoms into the grid.
As soon as the player has done that, he/she can log in his/her solution in order to find out if the correct guess was made.

The player can fire a ray by pressing on one of the i/o positions at the edges of the grid to obtain a clue.
The score will be decreased by doing this.

#### Hit
![Hit](resources/img/hit-01.png "Hit")
![Hit](resources/img/hit-02.png "Hit")

#### Deflection
![Deflection](resources/img/deflection-01.png "Deflection")
![Deflection](resources/img/deflection-02.png "Deflection")
![Deflection](resources/img/deflection-03.png "Deflection")
![Deflection](resources/img/deflection-04.png "Deflection")

#### Reflection
![Reflection](resources/img/reflection-01.png "Reflection")
![Reflection](resources/img/reflection-02.png "Reflection")

#### Miss
![Miss](resources/img/miss.png "Miss")


## Progress

### Todo
- ~~Implement rules~~
    - ~~Hit~~
    - ~~Deflection~~
    - ~~Reflection~~
    
- ~~Implement score~~
    - ~~Decrease score~~
    - ~~Refresh score to maximum~~

- Implement GUI
    - ~~Basic GUI~~
    - ~~Colors~~
    - ~~Text~~
    - Radial gradient
    - Background picture
    - Resizing behaviour
    - ~~Show correct solution~~
    - ~~Round atoms~~
    - Set transparency of grid
    - Background picture stays at same place when resizing
    
- ~~Implement rays~~
    - ~~Set color for ray type~~
    - ~~Don't store undiscovered rays after finishing game~~
    
- Implement music
    - ~~Choose background music~~
    - Set background music
    - Choose effect music
    - Set effect music

### Ideas
- Alternative scoring
- High scores (with database)
- Options (change background music, ...)
- Show remaining possible solutions
- Hexagonal grid
- Allow dragging click event

