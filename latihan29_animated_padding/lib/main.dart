import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO: lock screen device orientation
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
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: properties stateful
  double? padding = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            padding = 20;
          });
        },
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  // TODO: membuat animasi padding
                  child: AnimatedPadding(
                    padding: EdgeInsets.all(padding!),
                    duration: Duration(seconds: 1),
                    child: Container(
                      color: Colors.red[300],
                    ),
                  ),
                  flex: 1,
                ),
                Flexible(
                  // TODO: membuat animasi padding
                  child: AnimatedPadding(
                    padding: EdgeInsets.all(padding!),
                    duration: Duration(seconds: 1),
                    child: Container(
                      color: Colors.green[300],
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(padding!),
                        child: Container(
                          color: Colors.blue[300],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(padding!),
                        child: Container(
                          color: Colors.yellow[300],
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
