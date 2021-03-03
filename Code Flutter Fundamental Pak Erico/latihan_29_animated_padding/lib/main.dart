import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var padding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Padding"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            padding = 20;
          });
        },
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(padding),
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(padding),
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    flex: 1,
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(padding),
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(padding),
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    flex: 1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
