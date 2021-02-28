import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Appbar Gradation",
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Appbar Gradasi'),
          backgroundColor: Colors.blue,
          leading: Icon(Icons.home),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.green],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
              image: DecorationImage(
                  image: NetworkImage(
                    "https://flutter.dev/assets/homepage/garden-logos-color/google-5c9ef2841dda5d0247e53d56a91a70a1b961a08f1d2f0898d14441c3bc943586.png", // isi imagenya
                  ),
                  fit: BoxFit.none,
                  repeat: ImageRepeat.repeat),
            ),
          ),
        ),
        body: Center(
          child: Text("Hallo Dunia"),
        ),
      ),
    );
  }
}
