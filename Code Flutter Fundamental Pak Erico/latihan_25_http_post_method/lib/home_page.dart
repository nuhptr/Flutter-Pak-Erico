import 'package:flutter/material.dart';
import 'package:latihan_25_http_post_method/model/post_result.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PostResult postResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Post'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text((postResult != null)
                ? postResult.id +
                    " " +
                    postResult.name +
                    " " +
                    postResult.job +
                    " " +
                    postResult.created
                : "Tidak Ada Data"),
            ElevatedButton(
              onPressed: () {
                PostResult.connectToApi("Adi", "Dokter").then((value) {
                  postResult = value;
                  setState(() {});
                });
              },
              child: Text("Post"),
            )
          ],
        ),
      ),
    );
  }
}
