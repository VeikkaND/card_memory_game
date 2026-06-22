import '../services/levelService.dart';
import 'package:get/get.dart';

class LevelController {
  final levelService = Get.find<LevelService>();

  RxList levels;

  LevelController() : levels = [].obs {
    levels.value = levelService.levels;
  }

  void completeLevel(int level) {
    levelService.completeLevel(level);
    levels.add(level);
  }

  void resetLevels() {
    levelService.resetLevels();
    levels.clear();
  }
}