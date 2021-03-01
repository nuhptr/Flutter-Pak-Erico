import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColorfulButton extends StatefulWidget {
  Color mainColor, secondColor;

  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, secondColor);

  ColorfulButton({this.mainColor, this.secondColor});
}

class _ColorfulButtonState extends State<ColorfulButton> {
  Color mainColor, secondColor;
  bool isPressed = false;

  _ColorfulButtonState(this.mainColor, this.secondColor);

  @override
  Widget build(BuildContext context) {
    // todo: untuk merotate container
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
                  // todo : untuk merotate icon
                  child: Transform.rotate(
                    angle: -pi / 4,
                    child: Icon(
                      Icons.android,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
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
              Transform.translate(
                offset: Offset(-30, 30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-30, -30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(30, -30),
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
