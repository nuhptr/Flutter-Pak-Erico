import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'application_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ApplicationColor>(
      create: (_) => ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Consumer<ApplicationColor>(
            builder: (BuildContext context, applicationColor, _) => Text(
              'Provider State Management',
              style: TextStyle(color: applicationColor.color),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (BuildContext context, applicationColor, _) =>
                    AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: 100,
                  height: 100,
                  color: applicationColor.color,
                  margin: EdgeInsets.all(5),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('AB'),
                    margin: EdgeInsets.all(5),
                  ),
                  Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) => Switch(
                      value: applicationColor.isLightBlue,
                      onChanged: (onChange) {
                        applicationColor.isLightBlue = onChange;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text('LB'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
