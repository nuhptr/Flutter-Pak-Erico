import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:latihan16_heroanimation/second_page.dart';

void main() {
  // TODO: lock device orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SecondPage()));
      },

      // TODO: hero animation using same tag
      child: Hero(
        tag: "image",
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image.network(
                "https://repository-images.githubusercontent.com/15949540/b0a70b80-cb15-11e9-8338-661f601406a1",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
