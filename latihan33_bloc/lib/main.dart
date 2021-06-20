import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:latihan33_bloc/color_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: properties kelas home
  ColorBloc? colorBloc = ColorBloc();

  // TODO: untuk menutup state yang terjadi sehingga memori tidak menumpuk
  @override
  void dispose() {
    colorBloc!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // TODO: streambuilder digunakan untuk BLOC
        child: StreamBuilder<Color>(
          stream: colorBloc!.stateStream,
          initialData: Colors.green[300],
          builder: (BuildContext context, snapshot) => AnimatedContainer(
            decoration: BoxDecoration(
              color: snapshot.data,
              borderRadius: BorderRadius.circular(10),
            ),
            duration: const Duration(milliseconds: 500),
            width: 100,
            height: 100,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            elevation: 0,
            onPressed: () {
              // TODO: memasukan event to_yellow ke _mapEventToState
              colorBloc!.eventSink.add(ColorEvent.to_green);
            },
            backgroundColor: Colors.green[300],
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            elevation: 0,
            onPressed: () {
              // TODO: memasukan event to_blue ke _mapEventToState
              colorBloc!.eventSink.add(ColorEvent.to_blue);
            },
            backgroundColor: Colors.blue[300],
          ),
        ],
      ),
    );
  }
}
