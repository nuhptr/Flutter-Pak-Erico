import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: properties kelas stateful
  TextEditingController? controller = TextEditingController(text: "No name");
  bool? isOn = false;
  Future<SharedPreferences>? prefs = SharedPreferences.getInstance();

  // TODO: untuk save data ke shared preferences
  void saveData() async {
    SharedPreferences pref = await prefs!;
    pref.setString("name", controller!.text);
    pref.setBool("isOn", isOn!);
  }

  // TODO: untuk mendapatkan pref name
  Future<String> getName() async {
    SharedPreferences pref = await prefs!;
    return pref.getString("name") ?? "no name"; //* ?? -> sama dengan if else
  }

  // TODO: untuk mendapatkan pref bool
  Future<bool> getOn() async {
    var pref = await prefs!;
    return pref.getBool("isOn") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            // * pengisian teks
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                controller: controller,
              ),
            ),

            // * switch
            Switch(
                value: isOn!,
                onChanged: (value) {
                  isOn = value;
                  setState(() {});
                }),

            SizedBox(
              height: 10,
            ),
            // * Save data
            ElevatedButton(
                onPressed: () {
                  saveData();
                },
                child: Text("Save")),

            SizedBox(
              height: 10,
            ),
            // * load data
            ElevatedButton(
                onPressed: () {
                  getName().then((value) {
                    controller!.text = value;
                    setState(() {});
                  });
                  getOn().then((value) {
                    isOn = value;
                    setState(() {});
                  });
                },
                child: Text("Load"))
          ],
        ),
      ),
    );
  }
}
