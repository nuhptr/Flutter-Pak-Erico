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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible Layout"),
      ),
      body: Column(
        children: [
          // TODO: Tidak memaksa childnya untuk ikut mengembang
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    margin: EdgeInsets.all(5),
                  ),
                )
              ],
            ),
          ),
          // TODO: flexible kedua
          Flexible(
            // TODO: flex mempengaruhi ukuran
            flex: 2,
            child: Container(
              color: Colors.green,
              margin: EdgeInsets.all(5),
            ),
          ),
          // TODO: flexible ketiga
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
            ),
          )
        ],
      ),
    );
  }
}
