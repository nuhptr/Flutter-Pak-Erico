import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(CarouselDemo());

class CarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
