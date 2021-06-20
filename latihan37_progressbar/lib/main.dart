import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan37_progressbar/progress.dart';
import 'package:latihan37_progressbar/time_provider.dart';
import 'package:provider/provider.dart';

void main() {
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
        home: ChangeNotifierProvider(
          create: (BuildContext context) => TimeProvider(),
          child: Home(),
        ));
  }
}

class Home extends StatelessWidget {
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
          ],
        ),
      ),
    );
  }
}
