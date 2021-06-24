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
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  // TODO: properties of class
  double? x = -10;
  List<int> list = [2, 4, 3, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Bilangan => " & x!.negate().toString(),
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// TODO: penggunaan extension
extension NumberExtension on num {
  negate() {
    return -1 * this;
  }
}

// TODO: String extension
extension StringExtension on String {
  String operator &(String other) => this + "" + other;
}

// TODO: list extension
extension ListExtension<T> on List {
  // ignore: unnecessary_this
  T get midElement => (this.isEmpty) ? null : this[(this.length / 2).floor()];
}
