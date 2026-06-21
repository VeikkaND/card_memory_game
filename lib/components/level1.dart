import 'package:card_memory_game/config.dart';
import 'package:flame/components.dart';
import '../memoryGame.dart';
import 'package:flutter/material.dart';
import '../views/levelScreen.dart';
import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:get/get.dart';
import 'card.dart' as game;

class Level1 extends World with HasGameRef<MemoryGame> {
  var gameFinished = false;

  @override
  Future<void> onLoad() async {
    gameRef.pairsLeft = 3;
    addAll([
      game.Card(number: 1, position: spawnPoints[0], color: Colors.blue),
      game.Card(number: 1, position: spawnPoints[4], color: Colors.blue),

      game.Card(number: 2, position: spawnPoints[5], color: Colors.green),
      game.Card(number: 2, position: spawnPoints[1], color: Colors.green),

      game.Card(number: 3, position: spawnPoints[2], color: Colors.pink),
      game.Card(number: 3, position: spawnPoints[3], color: Colors.pink),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);

    if(gameRef.pairsLeft <= 0 && !gameFinished) {
      gameFinished = true;
      gameRef.overlays.add("win");
    }
  }
}