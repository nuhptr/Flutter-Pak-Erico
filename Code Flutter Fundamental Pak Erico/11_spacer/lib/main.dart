import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Spacer",
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacer"),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
