import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan_42_multibloc_page/bloc/color_bloc.dart';
import 'package:latihan_42_multibloc_page/bloc/counter_bloc.dart';
import 'package:latihan_42_multibloc_page/ui/draft_page.dart';
import 'package:latihan_42_multibloc_page/ui/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (BuildContext context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (BuildContext context, number) => Text(
                  number.toString(),
                  style: TextStyle(fontSize: 40),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), primary: color),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Text('click to change'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
