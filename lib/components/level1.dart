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
      game.Card(number: 1, position: Vector2(25, 25), color: Colors.blue),
      game.Card(number: 1, position: Vector2(25, 125), color: Colors.blue),

      game.Card(number: 2, position: Vector2(200, 25), color: Colors.green),
      game.Card(number: 2, position: Vector2(200, -125), color: Colors.green),

      game.Card(number: 3, position: Vector2(-100, 25), color: Colors.pink),
      game.Card(number: 3, position: Vector2(-100, -125), color: Colors.pink),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);

    if(gameRef.pairsLeft <= 0 && !gameFinished) {
      gameFinished = true;
      Get.offAll(() => LevelScreen());
    }
  }
}