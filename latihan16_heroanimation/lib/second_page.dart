import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Second Page'),
          ),
          SizedBox(
            height: 20,
          ),

          // TODO: hero animation using same tag
          Hero(
            tag: 'image',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Container(
                height: 300,
                width: 300,
                child: Image.network("https://github.com/github.png?size=460"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
