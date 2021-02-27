import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "nilai awal");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TextField Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  prefixIcon: Icon(Icons.account_circle_outlined),
                  // prefixText: "Name : ",
                  hintText: "Name",
                  prefixStyle: TextStyle(fontSize: 20),
                  labelText: "Name",
                ),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
