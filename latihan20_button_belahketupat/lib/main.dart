import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:math';

void main() {
  // TODO; lock device orientation screen
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            ColorfulButton(
              mainColor: Colors.green[300],
              secondColor: Colors.black38,
            )
          ],
        ),
      ),
    );
  }
}

// TODO: widget buatan sendiri untuk colorful button
// ignore: must_be_immutable
class ColorfulButton extends StatefulWidget {
  Color? mainColor, secondColor;

  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor!, secondColor!);

  // TODO : Constructor untuk menerima masukan
  ColorfulButton({this.mainColor, this.secondColor});
}

class _ColorfulButtonState extends State<ColorfulButton> {
  late Color mainColor, secondColor;
  late bool isPressed = false;

  // TODO: Constructor yang menerima kiriman dari parent
  _ColorfulButtonState(this.mainColor, this.secondColor);

  @override
  Widget build(BuildContext context) {
    // TODO: untuk mentransform rotate
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  elevation: (isPressed) ? 5 : 10,
                  color: (isPressed) ? mainColor : secondColor,
                  borderRadius: BorderRadius.circular(15),
                  // TODO : merotate icon
                  child: Icon(
                    Icons.android,
                    color: Colors.white,
                  ),
                ),
              ),

              // TODO: transform translate pertama
              Transform.translate(
                offset: Offset(30, 30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),

              // TODO: transform translate kedua
              Transform.translate(
                offset: Offset(30, 30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),

              // TODO: transform translate ketiga
              Transform.translate(
                offset: Offset(30, 30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),

              // TODO: transform translate ke-empat
              Transform.translate(
                offset: Offset(30, 30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
