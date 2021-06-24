import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../mobx/counter.dart';

void main() {
  // TODO: lock device screen orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

// TODO: declarate a object
CounterMobx? counter = CounterMobx();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //* Text -> menggunakan observer untuk mengambil nilai counter
            Observer(
              builder: (BuildContext context) => Text(
                counter!.value.toString(),
                style: const TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(height: 40),

            //* Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counter!.decrement();
                  },
                  child: const Icon(Icons.arrow_downward),
                ),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    counter!.increment();
                  },
                  child: const Icon(Icons.arrow_upward),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
