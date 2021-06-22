import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TODO: buat eventnya untuk masukan color
enum ColorEvent { to_blue, to_green, to_red }

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc(Color initialState) : super(initialState);

  @override
  Stream<Color> mapEventToState(ColorEvent? event) async* {
    // TODO: implement mapEventToState condition color
    if (event == ColorEvent.to_blue) {
      yield Colors.blue.shade300;
    } else if (event == ColorEvent.to_green) {
      yield Colors.green.shade300;
    } else {
      yield Colors.red.shade300;
    }
  }
}
