import 'package:flutter/material.dart';
import 'views/startScreen.dart';
import 'package:get/get.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'controllers/levelController.dart';
import 'services/levelService.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox("storage");
  Get.lazyPut<LevelService>(() => LevelService());
  Get.lazyPut<LevelController>(() => LevelController());

  runApp(
    GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.dark
          )
      ),
      home: StartScreen()
    )
  );
}