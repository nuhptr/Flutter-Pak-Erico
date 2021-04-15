import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aksebilitas"),
        centerTitle: true,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Semantics(
            onTapHint: "kurangi bilangan satu",
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  number -= 1;
                  if (number < 0) {
                    setState(() {
                      number = 0;
                    });
                  }
                });
              },
              child: Icon(Icons.exposure_minus_1),
            ),
          ),
          Semantics(
            onTapHint: "menambahkan 1 bilangan",
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  number += 1;
                });
              },
              child: Icon(Icons.plus_one),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Semantics(
              label:
                  "Ini adalah bilangan yang akan ditambahkan. bilangan saat ini adalah",
              child: Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
