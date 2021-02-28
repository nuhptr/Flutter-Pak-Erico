import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Image",
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Image "),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          padding: EdgeInsets.all(3),
          child: Image(
            image: NetworkImage(
                "https://flutter.dev/assets/homepage/garden-logos-color/google-5c9ef2841dda5d0247e53d56a91a70a1b961a08f1d2f0898d14441c3bc943586.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
