import 'package:flutter/material.dart';
import 'package:latihan8_navigasi_multipage/third_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // TODO : pindah ke halaman ke dua
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ThirdPage()));
          },
          child: Text("Second Page"),
        ),
      ),
    );
  }
}
