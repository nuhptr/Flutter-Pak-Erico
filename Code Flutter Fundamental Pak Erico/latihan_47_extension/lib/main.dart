import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  final double x = -10;
  final List<int> myList = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Extension'), centerTitle: true),
      body: Center(
        child: Text(
          "Bilangan => " & x.negate().toString(),
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

extension NumberExtension<T extends num> on num {
  T negate() => -1 * this;
}

extension StringExtension on String {
  String operator &(String other) => this + " " + other;
}

extension ListExtension<T> on List {
  T get midElement =>
      (this.length == 0) ? null : this[(this.length / 2).floor()];
}
