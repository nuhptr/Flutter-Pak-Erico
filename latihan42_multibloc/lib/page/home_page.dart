import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan42_multibloc/bloc/color_bloc.dart';
import 'package:latihan42_multibloc/bloc/counter_bloc.dart';
import 'package:latihan42_multibloc/page/draft_page.dart';
import 'package:latihan42_multibloc/page/second_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
        builder: (BuildContext context, stateColor) => DraftPage(
              backgroundColor: stateColor,
              body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // TODO: bloc builder for counter
                    BlocBuilder<CounterBloc, int>(
                        builder: (context, stateCounter) => Text(
                              stateCounter.toString(),
                              style: const TextStyle(fontSize: 30),
                            )),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          primary: stateColor,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage()));
                        },
                        child: const Text("Change"))
                  ],
                ),
              ),
            ));
  }
}
