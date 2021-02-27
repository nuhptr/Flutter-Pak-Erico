import 'package:flutter/material.dart';

import 'main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Login"),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return MainPage();
              }),
            );
          },
        ),
      ),
    );
  }
}
