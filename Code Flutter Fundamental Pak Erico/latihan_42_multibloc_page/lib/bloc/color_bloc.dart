import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { toPink, toAmber, toPurple }

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc(Color initialState) : super(initialState);

  @override
  Stream<Color> mapEventToState(ColorEvent event) {}
}
