import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:latihan_49_division_css/custom_buttom.dart';
import 'package:latihan_49_division_css/style/style.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Division Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(CustomStyle.buttonStyle),
            SizedBox(height: 20),
            CustomButton(CustomStyle.buttonStyle.clone()
              ..background.color(Colors.green[300])
              ..border(all: 3, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
