import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './levelScreen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: Column(
          children: [
            Text("Card Memory Game"),
            ElevatedButton(
              onPressed: () => Get.to(LevelScreen()), 
              child: Text("Start")
            )
          ],
        ),
      )
    );
  }
}