import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan26_http_getmethod/user.dart';

void main() {
  // TODO: lock screen device orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
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
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: panggil API
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text((user != null) ? user!.id! + " | " + user!.name! : "No data"),
            ElevatedButton(
              onPressed: () {
                // TODO: function untuk call API
                User.getUser(
                  "2",
                ).then((value) => user = value);
                // TODO: mengubah state data
                setState(() {});
              },
              child: Text("Get Data"),
            )
          ],
        ),
      ),
    );
  }
}
