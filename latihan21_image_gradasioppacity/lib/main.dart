import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO : lock device screen orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp])
      .then((_) => runApp(MyApp()));
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          // TODO: menggunakan shader mask untuk gradasi oppacity
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                colors: [Colors.black, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(
                  Rect.fromLTRB(0, 0, rectangle.height, rectangle.width));
            },
            // TODO: blend mode untuk
            blendMode: BlendMode.dstIn,
            child: Image(
              image: NetworkImage(
                'https://avatars.githubusercontent.com/u/50306963?s=460&u=91c18701b1a00ff84e61f569404a691dbf662c74&v=4',
              ),
              width: 300,
            ),
          ),
        ),
      ),
    );
  }
}
