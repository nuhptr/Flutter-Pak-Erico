import 'package:flutter/material.dart';

import 'package:navigasi_multipage/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Main Page",
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Goto second page"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }),
              );
            },
          ),
        ));
  }
}
