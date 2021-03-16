import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:latihan_35_doc_comment/user_profile.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  final UserProfile userProfile = UserProfile();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfile(),
    );
  }
}
