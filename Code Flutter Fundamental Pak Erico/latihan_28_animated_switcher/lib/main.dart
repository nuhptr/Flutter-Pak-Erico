import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = false;

  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.blue,
          width: 3,
        )),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Swicther"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                duration: Duration(seconds: 1),
                child: myWidget,
              ),
              Switch(
                  activeTrackColor: Colors.blue,
                  inactiveTrackColor: Colors.blue,
                  value: isOn,
                  onChanged: (newValue) {
                    isOn = newValue;
                    setState(() {
                      if (isOn) {
                        myWidget = Text(
                          "Switch: On",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        );
                      } else {
                        myWidget = Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(
                                color: Colors.blue,
                                width: 3,
                              )),
                        );
                      }
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
