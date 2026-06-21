import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'card.dart';

class Level1 extends World {
  @override
  Future<void> onLoad() async {
    add(
      Card(number: 1, position: Vector2(25, 25))
    );
  }
}