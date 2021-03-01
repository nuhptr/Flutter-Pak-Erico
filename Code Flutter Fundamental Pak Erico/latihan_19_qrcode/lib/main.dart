import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Qr Code'),
        ),
        body: Center(
          child: QrImage(
            data: 'https://www.youtube.com/channel/UCyGpJMoH4Hky6legCXq7hdQ',
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.L,
            padding: EdgeInsets.all(0),
            size: 200,
          ),
        ),
      ),
    );
  }
}
