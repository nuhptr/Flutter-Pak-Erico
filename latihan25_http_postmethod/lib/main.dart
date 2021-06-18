import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan25_http_postmethod/people.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(MyApp()));
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
  // TODO: properties kelas People
  People? people;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // TODO: pengecekan null value
              (people != null)
                  ? people!.name! +
                      " " +
                      people!.job! +
                      " " +
                      people!.createdAt!
                  : "Belum ada data",
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: mengambil data dari function static getName
                People.toJson("Adi", "Programmer").then((value) {
                  people = value;
                });
                // * : untuk mengubah state ketika ditekan
                setState(() {});
              },
              child: Text("post"),
            )
          ],
        ),
      ),
    );
  }
}
