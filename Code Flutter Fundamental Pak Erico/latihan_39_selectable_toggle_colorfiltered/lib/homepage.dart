import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets Demo GDG"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
              'Ini adalah Selectable Text, Silahkan pilih saya :',
              style: TextStyle(fontSize: 20),
              showCursor: true,
              cursorWidth: 3,
              cursorColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
