import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'person.dart';

void main() {
  // TODO: lock Device screen orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: buat object person
  Person? personSelect;

  // TODO: create list person
  List<Person>? persons = [
    Person(name: "Adi"),
    Person(name: "Nando"),
    Person(name: "Panji")
  ];

  // TODO: generate item dropdown (UPDATED) -> List<DropdownMenuItem<T>> name(List<T> object)
  List<DropdownMenuItem<Person>> items(List<Person> person) {
    List<DropdownMenuItem<Person>> blankItem = [];
    for (var item in person) {
      blankItem.add(DropdownMenuItem(
        child: Text(item.name!),
        value: item,
      ));
    }

    return blankItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 4),
              child: DropdownButton<Person>(
                items: items(persons!),
                value: personSelect,
                onChanged: (item) {
                  setState(() {
                    personSelect = item;
                  });
                },
              ),
            ),
            const SizedBox(height: 30),

            // TODO: menampilkan nama dari person yang dipilih
            Text(
              ((personSelect != null) ? personSelect!.name! : "Pilih"),
            )
          ],
        ),
      ),
    );
  }
}
