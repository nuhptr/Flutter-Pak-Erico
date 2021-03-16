import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'dart:async';

import 'package:latihan_37_progress_bar/custom_progress.dart';
import 'package:latihan_37_progress_bar/timestate_provider.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Progress Bar'),
        ),
        body: Center(
          child: ChangeNotifierProvider<TimeState>(
            create: (BuildContext context) => TimeState(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<TimeState>(
                  builder: (BuildContext context, timeState, _) =>
                      CustomProgressBar(
                    width: 200,
                    value: timeState.time,
                    totalValue: 15,
                  ),
                ),
                SizedBox(height: 10),
                Consumer<TimeState>(
                  builder: (BuildContext context, timeState, _) =>
                      ElevatedButton(
                    onPressed: () {
                      Timer.periodic(Duration(seconds: 1), (timer) {
                        if (timeState.time == 0)
                          timer.cancel();
                        else
                          timeState.time -= 1;
                      });
                    },
                    child: Text('Start'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
