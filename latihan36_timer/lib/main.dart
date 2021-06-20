import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO: lock device screen orentation
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
  // TODO: properties class timer
  bool? isBlack = true;
  bool? isStop = true;
  int? counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter!.toString(),
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  // TODO: if else color ketika tidak null
                  color: (isBlack!) ? Colors.black26 : Colors.red.shade300),
            ),

            // TODO: ukuran ke atasnya
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  // TODO: dengan menggunakan timer
                  Timer(const Duration(seconds: 3), () {
                    setState(() {
                      isBlack = !isBlack!;
                    });
                  });
                },
                child: const Text("Ubah warna 3 detik")),

            // TODO: ukuran ke atasnya
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Timer.run(() {
                    setState(() {
                      isBlack = !isBlack!;
                    });
                  });
                },
                child: const Text("Ubah warna langsung")),

            // TODO: ukuran ke atasnya
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  isStop = false;
                  Timer.periodic(const Duration(seconds: 1), (timer) {
                    setState(() {
                      if (isStop!) timer.cancel();
                      counter = counter! + 1;
                    });
                  });
                },
                child: const Text("Start Timer")),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isStop = true;
                  });
                },
                child: const Text("Stop Timer")),
          ],
        ),
      ),
    );
  }
}
