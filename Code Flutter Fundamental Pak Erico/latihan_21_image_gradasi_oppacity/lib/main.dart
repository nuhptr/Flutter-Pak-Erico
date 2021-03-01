import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradasi Oppacity'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
                  .createShader(
                      Rect.fromLTRB(0, 0, rectangle.height, rectangle.width));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              image: NetworkImage(
                  'https://avatars.githubusercontent.com/u/50306963?s=460&u=91c18701b1a00ff84e61f569404a691dbf662c74&v=4'),
              width: 300,
            ),
          ),
        ),
      ),
    );
  }
}
