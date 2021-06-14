import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Layout"),
      ),
      // TODO: stack adalah layout yang bisa menumpuk
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 1,
                    )
                  ],
                ),
              )
            ],
          ),
          ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Ini adalah text yang berada di tengah lapisan stack",
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Ini adalah text yang berada di tengah lapisan stack",
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Ini adalah text yang berada di tengah lapisan stack",
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Ini adalah text yang berada di tengah lapisan stack",
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Ini adalah text yang berada di tengah lapisan stack",
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Ini adalah text yang berada di tengah lapisan stack",
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Ini adalah text yang berada di tengah lapisan stack",
                    ),
                  )
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.amber),
              onPressed: () {},
              child: Text("Button"),
            ),
          )
        ],
      ),
    );
  }
}
