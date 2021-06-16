import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO: lock device orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) => runApp(MyApp()));
}

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
      // TODO: appbar custom height
      appBar: AppBar(
        flexibleSpace: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 30,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "App bar custom height",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              )),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Text("Custom AppBar"),
      ),
    );
  }
}
