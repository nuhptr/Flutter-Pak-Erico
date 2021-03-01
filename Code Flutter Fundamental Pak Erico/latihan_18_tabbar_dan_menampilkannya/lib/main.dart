import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TabBar tabBar = TabBar(
    tabs: [
      Tab(
        icon: Icon(Icons.folder_open_outlined),
        text: "Tab 1",
      ),
      Tab(
        icon: Icon(Icons.local_drink_outlined),
        text: "Tab 2",
      ),
      Tab(
        icon: Icon(Icons.ac_unit_outlined),
        text: "Tab 3",
      ),
      Tab(
        icon: Icon(Icons.access_time_outlined),
        text: "Tab 4",
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Example Tab Bar'),
          bottom: tabBar,
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Tab Bar 1'),
            ),
            Center(
              child: Text('Tab Bar 2'),
            ),
            Center(
              child: Text('Tab Bar 3'),
            ),
            Center(
              child: Text('Tab Bar 4'),
            )
          ],
        ),
      ),
    );
  }
}
