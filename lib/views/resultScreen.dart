import '../views/levelScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends StatelessWidget {
  final int correct;
  final int wrong;

  ResultScreen({required this.correct, required this.wrong});

  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: Column(
          children: [
            Text("Level statistics:"),
            Text("Correct guesses: $correct"),
            Text("Wrong guesses: $wrong"),
            ElevatedButton(
              onPressed: () => Get.to(LevelScreen()),
              child: const Text("Back to level selection")
            )
          ],
        ),
      )
    );
  }
}