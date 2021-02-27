import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LatihanListView(),
    ));

class LatihanListView extends StatefulWidget {
  LatihanListView({Key key}) : super(key: key);

  @override
  _LatihanListViewState createState() => _LatihanListViewState();
}

class _LatihanListViewState extends State<LatihanListView> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan ListView"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("Tambah data"),
                onPressed: () {
                  setState(() {
                    widgets.add(Text(
                      "Data ke- " + counter.toString(),
                      style: TextStyle(fontSize: 35),
                    ));
                    counter++;
                  });
                },
              ),
              RaisedButton(
                child: Text("Hapus Data"),
                onPressed: () {
                  setState(() {
                    widgets.removeLast();
                    counter--;
                  });
                },
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      ),
    );
  }
}
