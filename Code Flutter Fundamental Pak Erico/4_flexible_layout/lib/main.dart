import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "Flexible Layout",
        home: FlexibleApp(),
      ),
    );

class FlexibleApp extends StatelessWidget {
  const FlexibleApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible Layout"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    margin: EdgeInsets.all(5.0),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.green,
              margin: EdgeInsets.all(5.0),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5.0),
            ),
          )
        ],
      ),
    );
  }
}
