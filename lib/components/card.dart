import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import '../memoryGame.dart';

class Card extends RectangleComponent 
  with HasGameRef<MemoryGame>, TapCallbacks {
  final int number;
  final Color color;

  Card({
    required this.number,
    required Vector2 position,
    required this.color,
  }): super(
      position: position,
      size: Vector2(100, 100),
      anchor: Anchor.center,
      paint: Paint()
        ..color = Colors.white
        ..style = PaintingStyle.fill,
    );

  var found = false;
  bool isFlipping = false;
  bool isFront = false;

  @override
  void onTapDown(TapDownEvent event) async {
    if(found || isFlipping || gameRef.controlsDisabled) {
      return;
    }
    print("clicked $number");
    if(gameRef.selectedCard == null) { // select a new card
      gameRef.selectedCard = this;
      flip();
    } else if (gameRef.selectedCard == this) { // same card selected
      
    } else { // other card selected
      flip();
      if(gameRef.selectedCard.number == number) { // correct card selected
        found = true;
        gameRef.selectedCard.found = true;
        gameRef.pairsLeft -= 1;
        gameRef.correctGuesses++;
      } else { // wrong card selected
        gameRef.controlsDisabled = true;
        await Future.delayed(const Duration(seconds: 1));
        flip();
        gameRef.selectedCard.flip();
        gameRef.wrongGuesses++;
        gameRef.controlsDisabled = false;
      }
      gameRef.selectedCard = null; // reset selected card
    }
  }

  /*
  // show pairs on the back of cards
  @override
  Future<void> onLoad() async {
    await add(
      TextComponent(
        text: number.toString(),
        position: size / 2,
        anchor: Anchor.center,
        textRenderer: TextPaint(
            style: TextStyle(
              color: Colors.black
            )
          )
      )
    );
  }
  */

  Future<void> flip() async {
    isFlipping = true;

    await add(
      ScaleEffect.to(
        Vector2(0,1), 
        EffectController(duration: 0.15),
        onComplete: () async {
          isFront = !isFront;
          paint.color = isFront ? color : Colors.white;

          add(
            ScaleEffect.to(
              Vector2(1,1), 
              EffectController(duration: 0.15),
              onComplete: () {
                isFlipping = false;
              }
            )
          );
        }
      )
    );
  }
}