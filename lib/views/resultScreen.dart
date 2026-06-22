import '../views/levelScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/CustomScaffold.dart';
import '../breakpoints.dart';

class ResultScreen extends StatelessWidget {
  final int correct;
  final int wrong;

  ResultScreen({required this.correct, required this.wrong});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return(
      CustomScaffold(
        child: Column(
          children: [
            Text(
              "Level statistics:",
              style: TextStyle(fontSize: width > Breakpoints.phone
                ? 40.0
                : 25.0
              )
            ),
            Text(
              "Correct guesses: $correct",
              style: TextStyle(fontSize: 20.0)
            ),
            Text(
              "Wrong guesses: $wrong",
              style: TextStyle(fontSize: 20.0)
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () => Get.to(LevelScreen()),
                child: const Text("Back to level selection")
              )
            )
          ],
        ),
      )
    );
  }
}