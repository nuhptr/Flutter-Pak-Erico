import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  final Color backgroundColor;
  final Widget body;

  const DraftPage({this.backgroundColor, this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Bloc'),
        backgroundColor: backgroundColor,
        centerTitle: true,
      ),
      body: body,
    );
  }
}
