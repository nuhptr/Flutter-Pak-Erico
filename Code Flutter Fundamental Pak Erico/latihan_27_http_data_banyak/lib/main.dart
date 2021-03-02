import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan_27_http_data_banyak/model/user.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String output = "hasil json";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colection Json'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(output),
            ElevatedButton(
              onPressed: () {
                User.getUsers("2").then((users) {
                  output = "";
                  for (int i = 0; i < users.length; i++) {
                    output = output + "[ " + users[i].name + " ]";
                  }
                  setState(() {});
                });
              },
              child: Text('Get'),
            )
          ],
        ),
      ),
    );
  }
}
