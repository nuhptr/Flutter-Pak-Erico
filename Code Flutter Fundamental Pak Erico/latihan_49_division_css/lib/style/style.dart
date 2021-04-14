import 'package:flutter/material.dart';
import 'package:division/division.dart';

abstract class CustomStyle {
  static ParentStyle buttonStyle = ParentStyle(
    angleFormat: AngleFormat.degree,
  )
    ..background.color(Colors.lightBlue[300])
    ..borderRadius(all: 60)
    ..border(all: 3, color: Colors.lightBlue)
    ..elevation(5)
    ..rotate(-5)
    ..padding(left: 20, right: 20, top: 15, bottom: 15);

  static TxtStyle txtStyle = TxtStyle()
    ..fontSize(30)
    ..bold()
    ..textColor(Colors.white);
}
