import 'package:hive_ce_flutter/hive_flutter.dart';

class LevelService {
  final storage = Hive.box("storage");

  get levels => storage.get("levels") ?? [];

  void completeLevel(int level) {
    storage.put("levels", levels..add(level));
  }

  void resetLevels() {
    storage.put("levels", []);
  }
}