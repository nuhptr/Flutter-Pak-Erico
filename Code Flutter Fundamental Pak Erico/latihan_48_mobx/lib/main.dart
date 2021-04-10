import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:latihan_48_mobx/mobx/counter.dart';

final CounterMobx counter = CounterMobx();

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX State'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (BuildContext context) => Text(
                counter.value.toString(),
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counter.increment();
                  },
                  child: Icon(Icons.arrow_upward),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  child: Icon(Icons.arrow_downward),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
