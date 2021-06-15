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
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              buildCard(Icons.account_box, "Account People"),
              SizedBox(
                height: 10,
              ),
              buildCard(Icons.adb_outlined, "Android"),
            ],
          ),
        ),
      ),
    );
  }
}

Card buildCard(IconData iconData, String text) {
  return Card(
    elevation: 5,
    child: Row(
      children: [
        Container(
          height: 80,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            iconData,
            color: Colors.green[400],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(text)
      ],
    ),
  );
}
