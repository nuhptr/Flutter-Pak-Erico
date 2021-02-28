import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Hero and ClipRRect'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Second Page'),
          ),
          SizedBox(
            height: 20,
          ),
          Hero(
            tag: 'image',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Container(
                height: 300,
                width: 300,
                child: Image.network(
                    'https://avatars.githubusercontent.com/u/50306963?s=460&u=91c18701b1a00ff84e61f569404a691dbf662c74&v=4'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
