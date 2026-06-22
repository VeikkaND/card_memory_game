import 'package:card_memory_game/config.dart';
import 'package:flame/components.dart';
import '../memoryGame.dart';
import 'package:flutter/material.dart';
import 'package:flame/camera.dart';
import 'card.dart' as game;
import 'dart:math';

class Level2 extends World with HasGameRef<MemoryGame>{
  @override
  Future<void> onLoad() async {
    // generate random spawn points to choose from
    final n = 8;
    final spawns = List.generate(n, (index) => index);
    spawns.shuffle(Random());

    gameRef.pairsLeft = 4;

    addAll([
      game.Card(number: 1, position: spawnPoints[spawns[0]], color: Colors.blue),
      game.Card(number: 1, position: spawnPoints[spawns[1]], color: Colors.blue),

      game.Card(number: 2, position: spawnPoints[spawns[2]], color: Colors.green),
      game.Card(number: 2, position: spawnPoints[spawns[3]], color: Colors.green),

      game.Card(number: 3, position: spawnPoints[spawns[4]], color: Colors.pink),
      game.Card(number: 3, position: spawnPoints[spawns[5]], color: Colors.pink),

      game.Card(number: 4, position: spawnPoints[spawns[6]], color: Colors.orange),
      game.Card(number: 4, position: spawnPoints[spawns[7]], color: Colors.orange),
    ]);
  }
}