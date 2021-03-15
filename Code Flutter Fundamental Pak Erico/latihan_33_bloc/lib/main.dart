import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color.bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc colorBloc = ColorBloc();
  @override
  void dispose() {
    colorBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bloc Tanpa Library'),
        ),
        body: Center(
            child: StreamBuilder(
          stream: colorBloc.stateStream,
          initialData: Colors.amber,
          builder: (BuildContext context, snapshot) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: 100,
              height: 100,
              color: snapshot.data,
            );
          },
        )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                onPressed: () {
                  colorBloc.eventSink.add(ColorEvent.to_amber);
                },
                backgroundColor: Colors.amber),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                colorBloc.eventSink.add(ColorEvent.to_lightBlue);
              },
              backgroundColor: Colors.lightBlue,
            )
          ],
        ),
      ),
    );
  }
}
