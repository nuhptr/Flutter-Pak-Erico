import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isSelected = [true, false, true];
  ColorFilter colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: colorFilter,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Widgets Demo GDG"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                'Ini adalah Selectable Text, Silahkan pilih saya :',
                style: TextStyle(fontSize: 20),
                showCursor: true,
                cursorWidth: 3,
                cursorColor: Colors.red,
              ),
              ToggleButtons(
                children: [
                  Icon(Icons.access_alarm),
                  Icon(Icons.adb),
                  Icon(Icons.add_comment),
                ],
                isSelected: isSelected,
                onPressed: (index) {
                  setState(() {
                    if (index == 0)
                      colorFilter =
                          ColorFilter.mode(Colors.blue, BlendMode.screen);
                    else if (index == 1)
                      colorFilter =
                          ColorFilter.mode(Colors.green, BlendMode.softLight);
                    else
                      colorFilter =
                          ColorFilter.mode(Colors.purple, BlendMode.multiply);
                    for (var i = 0; i < isSelected.length; i++) {
                      isSelected[i] = (i == index) ? true : false;
                    }
                  });
                },
                fillColor: Colors.green[300],
                selectedColor: Colors.white,
                selectedBorderColor: Colors.green[100],
              )
            ],
          ),
        ),
      ),
    );
  }
}

main(List<String> args) {
  var a = 10;
  var b = 20;

  print(a + b);
}
