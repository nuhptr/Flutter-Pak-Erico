import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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

class Home extends StatelessWidget {
  Color? color = Colors.green.shade300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'I will keep learning flutter!',
        style: GoogleFonts.poppins(color: color!),
      ),
    ));
  }
}
