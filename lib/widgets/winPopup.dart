import '../views/resultScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WinPopup extends StatelessWidget {
  final int correct;
  final int wrong;

  WinPopup({required this.correct, required this.wrong});

  @override
  Widget build(BuildContext context) {
    return(
      Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.white.withAlpha(100),
          child: Column(
            children: [
              Text("You win!"),
              ElevatedButton(
                onPressed: () => Get.to(
                  ResultScreen(correct: correct, wrong: wrong)
                ), 
                child: const Text("Go to results")
              )
            ],
          )
        ),
      )
    );
  }
}