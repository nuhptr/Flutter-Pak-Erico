import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: properties class animated switcher
  bool? isOn = false;

  // * widget container buatan
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.red[300],
      border: Border.all(
        color: Colors.blue,
        width: 3,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(
              duration: Duration(seconds: 1),
            ),
            Switch(
              activeTrackColor: Colors.blue[300],
              inactiveTrackColor: Colors.grey[300],
              value: isOn!,
              onChanged: (value) {
                isOn = value;
                setState(() {
                  if (isOn!) {
                    myWidget = Text(
                      "Switch : On",
                      style: TextStyle(
                        color: Colors.green[300],
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    );
                  } else {
                    myWidget = Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.red[300],
                          border: Border.all(
                            color: Colors.blue.shade300,
                            width: 3,
                          )),
                    );
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
