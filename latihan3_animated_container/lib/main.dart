import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: function random
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          // TODO: For animated container
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            color: Color.fromARGB(
                255, random.nextInt(256), 255, random.nextInt(256)),
            width: 50.0 + random.nextInt(100),
            height: 50.0 + random.nextInt(100),
          ),
        ),
      ),
    );
  }
}
