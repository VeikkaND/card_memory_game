import 'package:card_memory_game/config.dart';
import 'package:flame/components.dart';
import '../memoryGame.dart';
import 'package:flutter/material.dart';
import 'package:flame/camera.dart';
import 'card.dart' as game;
import 'dart:math';

class Level1 extends World with HasGameRef<MemoryGame> {
  @override
  Future<void> onLoad() async {
    // generate random spawn points to choose from
    final n = 6;
    final spawns = List.generate(n, (index) => index);
    spawns.shuffle(Random());

    gameRef.pairsLeft = 3;

    addAll([
      game.Card(number: 1, position: spawnPoints[spawns[0]], color: Colors.blue),
      game.Card(number: 1, position: spawnPoints[spawns[1]], color: Colors.blue),

      game.Card(number: 2, position: spawnPoints[spawns[2]], color: Colors.green),
      game.Card(number: 2, position: spawnPoints[spawns[3]], color: Colors.green),

      game.Card(number: 3, position: spawnPoints[spawns[4]], color: Colors.pink),
      game.Card(number: 3, position: spawnPoints[spawns[5]], color: Colors.pink),
    ]);
  }
}