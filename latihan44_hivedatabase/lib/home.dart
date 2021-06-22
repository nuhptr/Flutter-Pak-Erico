import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'monster.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hive Database'),
      ),
      body: FutureBuilder(
        future: Hive.openBox("monsters"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error));
            } else {
              var monstersBox = Hive.box("monsters");
              if (monstersBox.length == 0) {
                monstersBox.add(Monster("Vampire",  level: 1));
                monstersBox.add(Monster("Guardian", level: 10));
              }
              // ignore: deprecated_member_use
              return WatchBoxBuilder(
                box: monstersBox,
                builder: (BuildContext context, monsters) => Container(
                  margin: const EdgeInsets.all(20),
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        Monster monster = monstersBox.getAt(index);
                        return Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: const Offset(0, 0),
                              blurRadius: 15,
                            )
                          ], color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(monster.name +
                                  "[" +
                                  monster.level.toString() +
                                  "]"),
                              Row(
                                children: [
                                  IconButton(
                                      color: Colors.green,
                                      icon: const Icon(Icons.trending_up),
                                      onPressed: () {
                                        monsters.putAt(
                                            index,
                                            Monster(monster.name,
                                                monster.level + 1));
                                      }),
                                  IconButton(
                                      color: Colors.amber,
                                      icon: const Icon(Icons.content_copy),
                                      onPressed: () {
                                        monsters.add(Monster(
                                            monster.name, monster.level));
                                      }),
                                  IconButton(
                                      color: Colors.red,
                                      icon: Icon(Icons.delete),
                                      onPressed: () {
                                        monsters.deleteAt(index);
                                      }),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: monstersBox.length),
                ),
              );
            }
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
