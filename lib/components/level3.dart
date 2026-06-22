import 'package:card_memory_game/config.dart';
import 'package:flame/components.dart';
import '../memoryGame.dart';
import 'package:flutter/material.dart';
import 'package:flame/camera.dart';
import 'card.dart' as game;

class Level3 extends World with HasGameRef<MemoryGame> {
  @override
  Future<void> onLoad() async {
    gameRef.pairsLeft = 6;
    addAll([
      game.Card(number: 1, position: spawnPoints[8], color: Colors.blue),
      game.Card(number: 1, position: spawnPoints[3], color: Colors.blue),

      game.Card(number: 2, position: spawnPoints[5], color: Colors.green),
      game.Card(number: 2, position: spawnPoints[4], color: Colors.green),

      game.Card(number: 3, position: spawnPoints[1], color: Colors.pink),
      game.Card(number: 3, position: spawnPoints[7], color: Colors.pink),

      game.Card(number: 4, position: spawnPoints[11], color: Colors.orange),
      game.Card(number: 4, position: spawnPoints[0], color: Colors.orange),

      game.Card(number: 5, position: spawnPoints[9], color: Colors.brown),
      game.Card(number: 5, position: spawnPoints[6], color: Colors.brown),

      game.Card(number: 6, position: spawnPoints[2], color: Colors.purple),
      game.Card(number: 6, position: spawnPoints[10], color: Colors.purple),
    ]);
  }
}