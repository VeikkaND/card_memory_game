import '../views/gameScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/levelController.dart';

class LevelButton extends StatelessWidget {
  final levelController = Get.find<LevelController>();
  final int level;

  LevelButton({required this.level});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20)
    );

    return (
      Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child:
      
      Obx(() => 
        ElevatedButton(
          style: style,
          onPressed: levelController.levels.contains(level) 
            ? null 
            : () => Get.to(GameScreen(level)), 
          child: levelController.levels.contains(level) 
            ? Text("Level $level - completed")
            : Text("Level $level")
        )
      )
      )
    );
  }
}