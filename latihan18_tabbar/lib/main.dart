import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO: Lock device orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) => runApp(MyApp()));
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
  // TODO: buat komponen tab bar
  var tabBar = TabBar(tabs: [
    Tab(
      icon: Icon(Icons.folder_open),
      text: "Tab 1",
    ),
    Tab(
      icon: Icon(Icons.ac_unit),
      text: "Tab 2",
    ),
    Tab(
      icon: Icon(Icons.access_time),
      text: "Tab 3",
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    // TODO: tab controller sebelum scaffold
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp Clone"),
          elevation: 0,
          bottom: tabBar,
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Tab bar 1"),
            ),
            Center(
              child: Text("Tab bar 2"),
            ),
            Center(
              child: Text("Tab bar 3"),
            )
          ],
        ),
      ),
    );
  }
}
