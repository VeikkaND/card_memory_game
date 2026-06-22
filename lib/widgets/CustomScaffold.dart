import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;

  CustomScaffold({required this.child});

  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: SizedBox(
              width: 960,
              child: child,
            )
          ),
        )
      )
    );
  }
}