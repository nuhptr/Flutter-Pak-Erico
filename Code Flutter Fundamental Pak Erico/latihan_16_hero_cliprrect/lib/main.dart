import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:latihan_16_hero_cliprrect/second_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Hero and ClipRRect'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondPage()));
        },
        child: Hero(
          tag: 'image',
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 100,
                height: 100,
                child: Image.network(
                  'https://scontent.ftkg1-1.fna.fbcdn.net/v/t1.0-9/120540423_4410150119056041_8011866948171541427_o.jpg?_nc_cat=102&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeGHVu-ZSfQ2_xFWrQLL-pjEIDNuQql6g48gM25CqXqDj5NZ4th3ramQRI3L4krPIKzUd3tWkc9uIhPATKuUodz4&_nc_ohc=kVWQmUoClnMAX99IZjf&_nc_ht=scontent.ftkg1-1.fna&oh=675a68890337099955a4f2170518cf9c&oe=60609CF8',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
