import 'dart:async';

import 'package:flutter/material.dart';

// TODO: class enum untuk membuat eventnya
enum ColorEvent { to_green, to_blue }

class ColorBloc {
  // TODO: membaca inputan yang masuk
  ColorBloc() {
    _event!.stream.listen(_mapEventToState);
  }

  // TODO: properties kelas untuk inisialisasi
  Color? _color = Colors.yellow[300];

  // TODO: controller untuk event dan pembuka eventnya
  StreamController<ColorEvent>? _event = StreamController<ColorEvent>();
  StreamSink<ColorEvent> get eventSink => _event!.sink;

  // TODO: controller untuk state dan pembuka statenya
  StreamController<Color>? _state = StreamController<Color>();
  StreamSink<Color> get _stateSink => _state!.sink; //* masih di dalam selang
  Stream<Color> get stateStream => _state!.stream; //* sudah menjadi output

  // TODO: untuk mapping event yang masuk dan output yang dihasilkan
  void _mapEventToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.to_green) {
      _color = Colors.green[300];
    } else {
      _color = Colors.blue[300];
    }

    _stateSink.add(_color!); //* memasukan ke dalam selang
  }

  // TODO: untuk membereskan selang state
  void dispose() {
    _event!.close();
    _state!.close();
  }
}
