import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './levelScreen.dart';
import '../widgets/CustomScaffold.dart';
import '../breakpoints.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 30)
    );

    return(
      CustomScaffold(
        child: Column(
          children: [
            Text(
              "Card Memory Game",
              style: TextStyle(fontSize: width > Breakpoints.phone
                ? 50.0
                : 30.0
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: ElevatedButton(
                style: style,
                onPressed: () => Get.to(LevelScreen()), 
                child: Text("Start")
              )
            )
          ],
        ),
      )
    );
  }
}