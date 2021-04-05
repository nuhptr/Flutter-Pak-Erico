import 'package:flutter/material.dart';

import 'package:latihan_42_multibloc_page/ui/draft_page.dart';
import 'package:latihan_42_multibloc_page/ui/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraftPage(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "0",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), primary: Colors.pink),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Text('click to change'),
            )
          ],
        ),
      ),
    );
  }
}
