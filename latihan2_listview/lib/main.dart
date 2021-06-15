import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO: lock device orientation
  WidgetsFlutterBinding().ensureVisualUpdate();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(MyApp()));
}

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
  // TODO: null safety variabel
  List<Widget>? widgets = [];
  int? counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //TODO: add button
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    //  TODO: ! -> Null check di variable null safety
                    widgets!.add(Text(
                      "Data ke- " + counter!.toString(),
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ));
                    // TODO: ++ -> diganti dengan null check
                    if (counter != null) {
                      counter = counter! + 1;
                    }
                  });
                },
                child: Text("Tambah Data"),
              ),
              //TODO : remove button
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widgets!.removeLast();
                    if (counter != null) {
                      counter = counter! - 1;
                    }
                  });
                },
                child: Text("Hapus Data"),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets!,
          )
        ],
      ),
    );
  }
}
