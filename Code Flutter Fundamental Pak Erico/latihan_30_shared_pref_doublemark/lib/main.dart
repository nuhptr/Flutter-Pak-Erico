import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController(text: "No Name");
  bool isOn = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("name", _controller.text);
    pref.setBool("ison", isOn);
  }

  Future<String> getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('name') ??
        "no name"; // double mark is tell to the system is null? if yes return no name
  }

  Future<bool> getOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('ison') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: _controller,
            ),
            Switch(
              value: isOn,
              onChanged: (newValue) {
                isOn = newValue;
                setState(() {});
              },
            ),
            ElevatedButton(
              onPressed: () {
                saveData();
              },
              child: Text('Save'),
            ),
            ElevatedButton(
              onPressed: () {
                getName().then((value) {
                  _controller.text = value;
                  setState(() {});
                });
                getOn().then((value) {
                  isOn = value;
                  setState(() {});
                });
              },
              child: Text('Load'),
            )
          ],
        ),
      ),
    );
  }
}
