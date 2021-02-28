import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card',
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Latihan Card'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, "Account People"),
              buildCard(Icons.adb_outlined, "Serangga Android")
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
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          child: Icon(
            iconData,
            color: Colors.green,
          ),
        ),
        Text(text)
      ],
    ),
  );
}
