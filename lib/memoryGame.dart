import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'config.dart';
import 'components/components.dart';

class MemoryGame extends FlameGame {
  final int level;

  MemoryGame(this.level);
  
  @override
  Future<void> onLoad() async {
    late final World world;

    switch(level) {
      case 1:
        world = Level1();
        break;
      case 2:
        world = Level1();
        break;
      case 3:
        world = Level1();
        break;
    }

    final camera = CameraComponent.withFixedResolution(
      world: world,
      width: gameWidth, 
      height: gameHeight,
    );

    await add(world);
    await add(camera);
  }
}