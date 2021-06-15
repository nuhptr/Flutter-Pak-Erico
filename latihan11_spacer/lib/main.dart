import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO: lock device orientation
  WidgetsFlutterBinding().ensureVisualUpdate();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
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
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Row(
          children: [
            // TODO: widget Spacer untuk memberi space -> default flex : 1
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.red[300],
              ),
              width: 80,
              height: 80,
            ),
            Spacer(),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blue[300],
              ),
            ),
            Spacer(),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Spacer(),
          ],
        )),
      ),
    );
  }
}
