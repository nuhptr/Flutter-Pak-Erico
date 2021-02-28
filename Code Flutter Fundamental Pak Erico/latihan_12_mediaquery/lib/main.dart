import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Media Query',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? BuildContainer()
          : BuildContainer2(),
    );
  }
}

class BuildContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 6,
          ),
          Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 6,
          ),
          Container(
            color: Colors.redAccent,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 6,
          ),
        ],
      ),
    );
  }
}

class BuildContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 6,
          ),
          Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 6,
          ),
          Container(
            color: Colors.redAccent,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 6,
          ),
        ],
      ),
    );
  }
}
