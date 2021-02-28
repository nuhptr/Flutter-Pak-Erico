import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inkwell'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                color: Colors.amber,
                child: Text("Raised Button"),
                onPressed: () {},
              ),
              Material(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                elevation: 2,
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    gradient: LinearGradient(
                        colors: [Colors.green, Colors.yellow],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: Colors.transparent,
                    child: Center(
                      child: InkWell(
                        splashColor: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        onTap: () {},
                        child: Text("Inkwell"),
                        // onTap: () {},
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
