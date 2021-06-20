import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:latihan34_bloclibrary/color_event.dart';

class ColorBloc extends HydratedBloc<ColorEvent, Color> {
  ColorBloc(Color state) : super(state);

  // TODO: untuk mengecek event yang masuk dan mengembalikan outputnya
  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    if (event == ColorEvent.to_green) {
      yield Colors.green.shade300;
    } else {
      yield Colors.blue.shade300;
    }
  }

  // TODO: Untuk meload state color terakhir
  @override
  Color? fromJson(Map<String, dynamic> json) {
    try {
      return Color(json["color"] as int);
    } catch (e) {
      return null;
    }
  }

  // TODO: untuk menyimpan nilai color terakhir dalam betuk int bukan color
  @override
  Map<String, int>? toJson(Color state) {
    try {
      return {"color": state.value};
    } catch (e) {
      return null;
    }
  }
}
