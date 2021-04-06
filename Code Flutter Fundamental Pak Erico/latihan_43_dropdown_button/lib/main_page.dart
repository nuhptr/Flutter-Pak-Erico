import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // todo: Object Person
  Person selectedPerson;

  // todo: membuat list persons
  List<Person> persons = [
    Person(name: "Joni"),
    Person(name: "Nando"),
    Person(name: "Agip")
  ];

  // todo: method generate item
  List<DropdownMenuItem> generateItems(List<Person> persons) {
    List<DropdownMenuItem> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DropDown Button"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 4),
              child: DropdownButton(
                isExpanded: true,
                items: generateItems(persons),
                value: selectedPerson,
                onChanged: (item) {
                  setState(() {
                    selectedPerson = item;
                  });
                },
              ),
            ),
            SizedBox(height: 30),
            Text((selectedPerson != null)
                ? selectedPerson.name
                : "Belum ada yang terpilih"),
          ],
        ),
      ),
    );
  }
}

// todo: Kelas model tarok sini aja biar cepet
class Person {
  final String name;

  Person({this.name});
}
