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

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Semantics(
              // * menutupi kotak
              hidden: true,
              // * ketika ada semantic diluar misal scaffold tidak disertakan
              excludeSemantics: true,
              label: "Ini adalah angka $number",
              child: Text(
                number.toString(),
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )),
          const SizedBox(height: 20),

          //* Widget tombol
          FloatingActionButton(
            onPressed: () {
              setState(() {
                number = number! + 1;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
        ],
      ),
    ));
  }
}
