import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'config.dart';
import 'components/components.dart';
import 'package:get/get.dart';
import 'controllers/levelController.dart';

class MemoryGame extends FlameGame {
  final int level;
  final levelController = Get.find<LevelController>();

  MemoryGame(this.level);

  var selectedCard = null;
  var correctGuesses = 0;
  var wrongGuesses = 0;
  var pairsLeft = 0;
  var gameFinished = false;
  
  var controlsDisabled = false;
  
  @override
  Future<void> onLoad() async {
    late final World world;
    resetLevel();

    switch(level) {
      case 1:
        world = Level1();
        break;
      case 2:
        world = Level2();
        break;
      case 3:
        world = Level3();
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

  @override
  void update(double dt) {
    super.update(dt);

    if(pairsLeft <= 0 && !gameFinished) {
      gameFinished = true;
      levelController.completeLevel(level);
      overlays.add("win");
    }
  }

  void resetLevel() {
    selectedCard = null;
    correctGuesses = 0;
    wrongGuesses = 0;
    gameFinished = false;
  }
}