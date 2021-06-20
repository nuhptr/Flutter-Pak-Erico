import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:latihan37_progressbar/progress.dart';
import 'package:latihan37_progressbar/time_provider.dart';

void main() {
  // TODO: lock device screen orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // TODO: untuk mengimplementasi kelas provider
        home: ChangeNotifierProvider(
          create: (BuildContext context) => TimeProvider(),
          child: Home(),
        ));
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // TODO: digunakan untuk menggunakan provider class
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: consumer digunakan untuk menggunakan kelas provider
            Consumer<TimeProvider>(
                builder: (BuildContext context, timeProvider, _) => ProgressBar(
                      width: 200,
                      value: timeProvider.time,
                      totalValue: 15,
                    )),
            const SizedBox(
              height: 10,
            ),

            // TODO: button untuk melakukan penambahan
            Consumer<TimeProvider>(
              builder: (BuildContext context, timeProvider, _) =>
                  ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                ),
                onPressed: () {
                  Timer.periodic(const Duration(seconds: 1), (timer) {
                    if (timeProvider.time == 0) {
                      timer.cancel();
                    } else {
                      timeProvider.time = timeProvider.time - 1;
                    }
                    setState(() {});
                  });
                },
                child: const Text("Start"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
