import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "Animated Container",
        home: AnimasiContainer(),
      ),
    );

class AnimasiContainer extends StatefulWidget {
  @override
  _AnimasiContainerState createState() => _AnimasiContainerState();
}

class _AnimasiContainerState extends State<AnimasiContainer> {
  Random random = Random();

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
          child: AnimatedContainer(
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)),
            duration: Duration(seconds: 1),
            width: 50.0 + random.nextInt(100),
            height: 50.0 + random.nextInt(100),
          ),
        ),
      ),
    );
  }
}
