# Card memory game

Second course project of the course **Device-Agnostic Design with Flutter and Dart**

## Project description

This project was built for the aforementioned course using Flutter and Dart, and the [Flame Engine](https://flame-engine.org/).

The application is a game, where the goal is to solve a card memory puzzle game. 
The game includes 3 different levels with increasing amounts of randomly generated cards.

All completed levels are saved in persistent storage. 
The game also includes a breakpoint for phones, which affects font sizes. The game itself is also creted using the CameraComponent's withFixedResolution constructor, which scales the game on smaller devices. 

## Instructions 

The game starts at the home screen, where the player can navigate to the level **selection screen**
* Levels can be chosen by clicking on the level n -buttons
* Already completed levels can be reset using the *Reset levels* -button

After selecting a level, the player is directed into the **game screen**
* The goal is to find matching pairs of cards *(cards with the same color)*
* Once all pairs have been found, the player is shown a completion popup, from which, the player can navigate to the **result screen**, where statistics about the completed level are shown.
