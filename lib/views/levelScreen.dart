import 'package:card_memory_game/views/gameScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/levelController.dart';

class LevelScreen extends StatelessWidget {
  final levelController = Get.find<LevelController>();

  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: Obx(() => 
          Column(
            children: [
              Text("Level selection"),
              ElevatedButton(
                onPressed: () => Get.to(GameScreen(1)), 
                child: levelController.levels.contains(1) 
                  ? Text("Level 1 - completed")
                  : Text("Level 1")
              ),
              ElevatedButton(
                onPressed: () => Get.to(GameScreen(2)), 
                child: levelController.levels.contains(2) 
                  ? Text("Level 2 - completed")
                  : Text("Level 2")
              ),
              ElevatedButton(
                onPressed: () => Get.to(GameScreen(3)), 
                child: levelController.levels.contains(3) 
                  ? Text("Level 3 - completed")
                  : Text("Level 3")
              ),
              ElevatedButton(
                onPressed: () => levelController.resetLevels(), 
                child: Text("Reset levels")
              )
            ],
          ),
        )
      )
    );
  }
}