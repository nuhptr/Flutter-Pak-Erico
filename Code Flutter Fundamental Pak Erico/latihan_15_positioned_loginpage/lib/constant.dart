import 'package:flutter/material.dart';

double getSmallDiameter(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.6;
}

double getBigDiameter(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.875;
}
