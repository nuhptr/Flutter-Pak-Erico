import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ColorEvent { to_amber, to_lightBlue }

class ColorBloc {
  Color _color = Colors.amber;

  // controller untuk event dan pembuka eventnya
  StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  // controller untuk state dan pembuka statenya
  StreamController<Color> _stateController = StreamController<Color>();
  StreamSink<Color> get _stateSink => _stateController.sink; // masih didalam
  Stream<Color> get stateStream => _stateController.stream; // output

  void _mapEventToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.to_amber) {
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }

    _stateSink.add(_color);
  }

  // membaca inputan yang masuk
  ColorBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

  // untuk membereskan selang-selang yang sudah tidak dipakai
  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
