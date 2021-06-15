import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO: lock device orientation
  WidgetsFlutterBinding().ensureVisualUpdate();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),

          // TODO: menampilkan banyak aksi
          actions: [
            IconButton(onPressed: () => null, icon: Icon(Icons.settings)),
            IconButton(onPressed: () => null, icon: Icon(Icons.exit_to_app)),
          ],
          flexibleSpace: Container(
            // TODO: dekorasi box
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.green],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
              ),

              // TODO: dekorasi Image
              image: DecorationImage(
                  image: NetworkImage(
                    "https://flutter.dev/assets/homepage/garden-logos-color/google-5c9ef2841dda5d0247e53d56a91a70a1b961a08f1d2f0898d14441c3bc943586.png",
                  ),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.noRepeat),
            ),
          ),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
