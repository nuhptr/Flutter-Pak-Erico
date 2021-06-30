import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'database_service.dart';

Future<void> main() async {
  // TODO: lock device screen orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp();
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LandingPage());
  }
}

// ignore: use_key_in_widget_constructors
class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // TODO: properties kelas
  String? imagePath;

  // TODO: get image from gallery
  Future getImage() async {
    PickedFile? pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    return File(pickedFile!.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (imagePath != null)
                ? Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black26),
                        image: DecorationImage(
                          image: NetworkImage(imagePath!),
                          fit: BoxFit.cover,
                        )),
                  )
                : Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black26),
                    )),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                var file = await getImage();
                imagePath = await DatabaseService.uploadImage(file);

                setState(() {});
              },
              child: const Text('Upload Image'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signInAnonymously();
                },
                child: const Text('Sign In'))
          ],
        )),
      ),
    );
  }
}
