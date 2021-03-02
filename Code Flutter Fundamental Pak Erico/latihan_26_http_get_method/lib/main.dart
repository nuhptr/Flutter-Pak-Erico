import 'package:flutter/material.dart';

import 'package:latihan_26_http_get_method/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User _user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Method'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (_user != null) ? _user.id + " | " + _user.name : "Null",
            ),
            ElevatedButton(
              onPressed: () {
                User.connectToApi("2").then((value) {
                  _user = value;
                  setState(() {});
                });
              },
              child: Text('Get'),
            )
          ],
        ),
      ),
    );
  }
}
