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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // TODO: ternary opeartor untuk posisi hp ketika digunakan
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? BuildContainer()
            : BuildContainer2(),
      ),
    );
  }
}

// TODO: ketika dalam keadaan potrait
class BuildContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.green[300],
              ),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 6,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.red[300],
              ),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 6,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blue[300],
              ),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 6,
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: ketika dalam keadaan landscape
class BuildContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.green[300],
              ),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 6,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.red[300],
              ),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 6,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blue[300],
              ),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 6,
            ),
          ],
        ),
      ),
    );
  }
}
