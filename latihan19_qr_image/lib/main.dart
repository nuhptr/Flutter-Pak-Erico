import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  // TODO: Lock devie screen orientation
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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          // TODO: using pub dev qr_flutter
          child: QrImage(
            data: 'https://www.youtube.com/channel/UCyGpJMoH4Hky6legCXq7hdQ',
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.L,
            padding: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
