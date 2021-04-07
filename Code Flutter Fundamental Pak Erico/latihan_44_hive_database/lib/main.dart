import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:hive/hive.dart';

import 'main_page.dart';
import 'model/monster.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //? cari path provider yang tersedia di handhphone
  var appDocumentDirectory =
      await pathProvider.getApplicationDocumentsDirectory();
  //? init database Hive
  Hive.init(appDocumentDirectory.path);
  //? register adapter
  Hive.registerAdapter(MonsterAdapter());

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
