import 'package:card_memory_game/views/gameScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/levelController.dart';
import '../widgets/CustomScaffold.dart';
import '../widgets/levelButton.dart';
import '../breakpoints.dart';

class LevelScreen extends StatelessWidget {
  final levelController = Get.find<LevelController>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return(
      CustomScaffold(
        child: Column(
          children: [
            Text(
              "Level selection",
              style: TextStyle(fontSize: width > Breakpoints.phone
                ? 40.0
                : 25.0
              )
            ),
            LevelButton(level: 1),
            LevelButton(level: 2),
            LevelButton(level: 3),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: () => levelController.resetLevels(), 
                child: Text("Reset levels")
              )
            )
          ],
        ),
      )
    );
  }
}