import 'package:flame/components.dart';
import 'package:flame/events.dart';
import '../memoryGame.dart';

class Card extends RectangleComponent 
  with HasGameRef<MemoryGame>, TapCallbacks {
  Card({
    required this.number,
    required Vector2 position,
  }): super(
      position: position,
      size: Vector2(25, 25),
      anchor: Anchor.center,
    );
  
  final int number;

  @override
  void onTapDown(TapDownEvent event) {
    print("clicked");
  }

  @override
  Future<void> onLoad() async {
    await add(
      TextComponent(
        text: number.toString(),
        position: size / 2,
        anchor: Anchor.center
      )
    );
  }
}