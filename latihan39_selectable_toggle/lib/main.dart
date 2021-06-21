import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO: lock device screen orientation
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

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: properties class
  List<bool>? isSelect = [true, false, true];
  ColorFilter? color = ColorFilter.mode(Colors.blue.shade300, BlendMode.screen);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  TODO: selectable -> membuat widget yang di child bisa di select
            const SelectableText(
              "Adi Nugraha putra",
              style: TextStyle(fontSize: 20),
              showCursor: true,
              cursorWidth: 3,
              cursorColor: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),

            // TODO: toogle button -> bisa menekan banyak sekaligus seperti di msword
            ToggleButtons(
              children: [
                const Icon(Icons.access_alarm),
                const Icon(Icons.adb),
                const Icon(Icons.single_bed_sharp)
              ],
              isSelected: isSelect!,
              onPressed: (index) {
                if (index == 0) {
                  color = const ColorFilter.mode(Colors.blue, BlendMode.screen);
                } else if (index == 1) {
                  color =
                      const ColorFilter.mode(Colors.green, BlendMode.softLight);
                } else {
                  color =
                      const ColorFilter.mode(Colors.grey, BlendMode.multiply);
                }

                for (var i = 0; i < isSelect!.length; i++) {
                  isSelect![i] = (i == index) ? true : false;
                }
                setState(() {});
              },
              fillColor: Colors.green.shade300,
              selectedColor: Colors.white,
              selectedBorderColor: Colors.green.shade100,
            )
          ],
        ),
      ),
    );
  }
}
