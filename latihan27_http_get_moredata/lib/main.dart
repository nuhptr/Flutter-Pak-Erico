import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan27_http_get_moredata/user.dart';

void main() {
  // TODO: lock device screen orentation
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
  // TODO: deklarasi properties
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: properties of class
  User? user;
  String? output = "Hasil Json ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(output!),
            ElevatedButton(
              onPressed: () {
                // TODO: get user from api with id=2 and chane value of output
                User.getUser("2").then((users) {
                  for (var i = 0; i < users.length; i++) {
                    output = output! + users[i].name!;
                  }
                  setState(() {});
                });
              },
              child: Text("Get"),
            )
          ],
        ),
      ),
    );
  }
}
