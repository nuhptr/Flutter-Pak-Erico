import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() {
  // TODO :lock device screen orientation
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
  String? code = "";
  String? getCode = "";

  // TODO: function untuk scan barcode
  Future scanBarcode() async {
    getCode = await FlutterBarcodeScanner.scanBarcode(
        "#009922", "Cancel", true, ScanMode.DEFAULT);
    setState(() {
      code = getCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(code!),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                scanBarcode();
              },
              child: Text("Scan"),
            )
          ],
        ),
      ),
    );
  }
}
