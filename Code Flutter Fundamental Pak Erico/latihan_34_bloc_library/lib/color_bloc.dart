// import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ColorEvent { to_amber, to_lightBlue }

class ColorBloc extends HydratedBloc<ColorEvent, Color> {
  ColorBloc(Color state) : super(state);

  // @override
  // Color get initialState => super.initialState ?? Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    yield (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
  }

  @override
  Color fromJson(Map<String, dynamic> json) {
    //? untuk ngeload data dari json ketika dijalankan
    try {
      return Color(json['color'] as int);
    } catch (_) {
      return null;
    }
  }

  @override
  //? karena warna tidak bisa disimpan dalam bentuk color tapi integer
  Map<String, int> toJson(Color state) {
    try {
      return {'color': state.value};
    } catch (_) {
      return null;
    }
  }
}
