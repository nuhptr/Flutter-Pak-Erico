import 'package:flutter/material.dart';

double getSmallDiameter(BuildContext context) {
  return MediaQuery.of(context).size.width * 2 / 3;
}

double getBigDiameter(BuildContext context) {
  return MediaQuery.of(context).size.width * 7 / 8;
}
