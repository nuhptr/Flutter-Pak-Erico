import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: "Draggable",
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: variable properties
  var color1 = Colors.red;
  var color2 = Colors.blue;
  var isAccepted = false;
  Color? targetColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // TODO: widget draggable untuk menggeser widget
            Draggable<Color>(
              data: color1,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  color: color1,
                  shape: StadiumBorder(),
                  elevation: 3,
                ),
              ),
              // TODO: child when dragging -> ketika di drag akan melakukan apa
              childWhenDragging: SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  color: color1.withOpacity(0.7),
                  shape: StadiumBorder(),
                  elevation: 3,
                ),
              ),
              // TODO: digunakan untuk menerima hasil drag
              feedback: SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  color: color1.withOpacity(0.7),
                  shape: StadiumBorder(),
                  elevation: 3,
                ),
              ),
            ),

            // TODO: widget draggable ke-2 untuk menggeser widget
            Draggable<Color>(
              data: color2,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  color: color2,
                  shape: StadiumBorder(),
                  elevation: 3,
                ),
              ),
              // TODO: child when dragging ke-2 -> ketika di drag akan melakukan apa
              childWhenDragging: SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  color: color2.withOpacity(0.7),
                  shape: StadiumBorder(),
                  elevation: 3,
                ),
              ),
              // TODO: feedback ke-2 digunakan untuk menerima hasil drag
              feedback: SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  color: color2.withOpacity(0.7),
                  shape: StadiumBorder(),
                  elevation: 3,
                ),
              ),
            ),

            // TODO: DragTarget -> untuk melakukan aksi ketika sudah di target
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      )
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
