import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  // TODO: properties draftpage
  Color? backgroundColor;
  Widget? body;

  DraftPage({this.backgroundColor, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
    );
  }
}
