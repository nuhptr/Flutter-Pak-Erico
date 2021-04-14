import 'dart:math';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.rotate(
        angle: -5 / 180 * pi,
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(60),
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue[300],
              borderRadius: BorderRadius.circular(60),
              border: Border.all(width: 3, color: Colors.lightBlue),
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(60),
              child: InkWell(
                onTap: () {
                  // Fill this to take a action
                },
                splashColor: Colors.yellow,
                borderRadius: BorderRadius.circular(60),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: Text(
                    "Division",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
