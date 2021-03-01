import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:latihan_20_button_belah_ketupat/colorful_button.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // todo: Main Screen
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Button Belah ketupat'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColorfulButton(
              mainColor: Colors.green,
              secondColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
