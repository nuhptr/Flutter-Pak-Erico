import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:latihan31_provider/color_provider.dart';

void main() {
  // TODO: lock screen device orientaition
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
  @override
  Widget build(BuildContext context) {
    // TODO: implementasikan ChangeNotifierProvider di awal widget
    return ChangeNotifierProvider<ColorProvider>(
      create: (_) => ColorProvider(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Consumer<ColorProvider>(
            builder: (BuildContext context, colorProvider, _) => Text(
              "Provider State",
              style: TextStyle(color: colorProvider.color!),
            ),
          ),
        ),

        // TODO: Logic Body
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: sertakan <T> nama genericnya setiap make consumer
              Consumer<ColorProvider>(
                builder: (BuildContext context, colorProvider, _) =>
                    AnimatedContainer(
                  decoration: BoxDecoration(
                    color: colorProvider.color!,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  duration: Duration(seconds: 1),
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(5),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // TODO: row widget
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Green"),
                    margin: EdgeInsets.all(5),
                  ),

                  // TODO: switch dengan menggunakan consumer provider
                  Consumer<ColorProvider>(
                    builder: (BuildContext context, colorProvider, _) => Switch(
                        value: colorProvider.isLightBlue,
                        onChanged: (onChanged) {
                          colorProvider.isLightBlue = onChanged;
                        }),
                  ),
                  Container(
                    child: Text("Blue"),
                    margin: EdgeInsets.all(5),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
