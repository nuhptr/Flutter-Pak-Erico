import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isBlack = true;
  bool isStop = true;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Timer')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _counter.toString(),
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: (isBlack) ? Colors.black : Colors.red),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Timer(Duration(seconds: 3), () {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text('Ubah Warna 3 Detik'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Timer.run(() {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text('ubah warna langsung'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _counter = 0;
                  isStop = false;
                  Timer.periodic(Duration(seconds: 1), (timer) {
                    if (isStop) timer.cancel();
                    setState(() {
                      _counter++;
                    });
                  });
                },
                child: Text('Start Timer'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  isStop = true;
                },
                child: Text('Stop Timer'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
