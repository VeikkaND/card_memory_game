import 'package:card_memory_game/views/gameScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LevelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: Column(
          children: [
            Text("Level selection"),
            ElevatedButton(
              onPressed: () => Get.to(GameScreen(1)), 
              child: Text("Level 1")
            ),
            ElevatedButton(
              onPressed: () => Get.to(GameScreen(2)), 
              child: Text("Level 2")
            ),
            ElevatedButton(
              onPressed: () => Get.to(GameScreen(3)), 
              child: Text("Level 3")
            ),
          ],
        ),
      )
    );
  }
}