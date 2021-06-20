import 'dart:async';

import 'package:flutter/material.dart';

// TODO: untuk membuat eventnya
enum ColorEvent { to_yellow, to_blue }

class ColorBloc {
  Color? _color = Colors.yellow[300];

  // TODO: controller untuk event dan pembuka eventnya
  StreamController<ColorEvent>? _event = StreamController<ColorEvent>();
  StreamSink<ColorEvent> get eventSink => _event!.sink;

  // TODO: controller untuk state dan pembuka statenya
  
}
