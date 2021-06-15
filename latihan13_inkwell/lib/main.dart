import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO: lock device orientation
  WidgetsFlutterBinding().ensureVisualUpdate();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            Material(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              elevation: 2,
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Colors.blue,
                ),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Colors.transparent,
                  child: Center(
                    // TODO: widget inkwell -> button yang bisa di custom
                    child: InkWell(
                        splashColor: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        // TODO : memberikan aksi pada button inkwell
                        onTap: () {},
                        child: Text(
                          "Inkwell",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
