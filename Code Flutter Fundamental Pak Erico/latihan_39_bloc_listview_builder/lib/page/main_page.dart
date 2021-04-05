import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Builder Bloc")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Tambah'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Text(index.toString());
              },
            ),
          )
        ],
      ),
    );
  }
}
