import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan_42_multibloc_page/bloc/color_bloc.dart';
import 'package:latihan_42_multibloc_page/bloc/counter_bloc.dart';
import 'package:latihan_42_multibloc_page/ui/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(create: (_) => ColorBloc(Colors.pink)),
        BlocProvider<CounterBloc>(create: (_) => CounterBloc(0))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
