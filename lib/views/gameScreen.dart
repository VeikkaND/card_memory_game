import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../memoryGame.dart';

class GameScreen extends StatelessWidget {
  final int level;

  GameScreen(this.level);

  @override
  Widget build(BuildContext context) {
    return(
      GameWidget(
        game: MemoryGame(level),
      )
    );
  }
}