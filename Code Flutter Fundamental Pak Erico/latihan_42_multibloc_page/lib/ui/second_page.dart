import 'package:flutter/material.dart';
import 'package:latihan_42_multibloc_page/ui/draft_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraftPage(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "0",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ignore: missing_required_param
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.pink),
                  onPressed: () {},
                ),
                // ignore: missing_required_param
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.amber),
                  onPressed: () {},
                ),
                // ignore: missing_required_param
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.purple),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
