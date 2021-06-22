import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan42_multibloc/bloc/color_bloc.dart';
import 'package:latihan42_multibloc/bloc/counter_bloc.dart';
import 'package:latihan42_multibloc/page/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: register the bloc
    return MultiBlocProvider(providers: [
      BlocProvider<CounterBloc>(create: (_) => CounterBloc(0)),
      BlocProvider<ColorBloc>(create: (_) => ColorBloc(Colors.blue.shade300))
    ], child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
  }
}
