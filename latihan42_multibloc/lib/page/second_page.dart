import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan42_multibloc/bloc/color_bloc.dart';
import 'package:latihan42_multibloc/bloc/counter_bloc.dart';
import 'package:latihan42_multibloc/page/draft_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: membuat variabel untuk memasukan event
    var colorBloc = BlocProvider.of<ColorBloc>(context);
    var counterBloc = BlocProvider.of<CounterBloc>(context);

    // TODO: color bloc
    return BlocBuilder<ColorBloc, Color>(
      builder: (BuildContext context, stateColor) => DraftPage(
        backgroundColor: stateColor,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // TODO: counter bloc
              BlocBuilder<CounterBloc, int>(
                builder: (BuildContext context, number) => GestureDetector(
                  onTap: () {
                    counterBloc.add(number + 1);
                  },
                  child: Text(
                    number.toString(),
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // TODO: event red color
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: (stateColor == Colors.red.shade300)
                            ? const CircleBorder(
                                side: BorderSide(color: Colors.black, width: 3))
                            : const CircleBorder(),
                        primary: Colors.red.shade300),
                    onPressed: () {
                      colorBloc.add(ColorEvent.to_red);
                    },
                    child: const Text("red color"),
                  ),

                  // TODO: event blue color
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: (stateColor == Colors.blue.shade300)
                            ? const CircleBorder(
                                side: BorderSide(color: Colors.black, width: 3))
                            : const CircleBorder(),
                        primary: Colors.blue.shade300),
                    onPressed: () {
                      colorBloc.add(ColorEvent.to_blue);
                    },
                    child: const Text("blue color"),
                  ),

                  // TODO: event green color
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: (stateColor == Colors.green.shade300)
                            ? const CircleBorder(
                                side: BorderSide(color: Colors.black, width: 3))
                            : const CircleBorder(),
                        primary: Colors.green.shade300),
                    onPressed: () {
                      colorBloc.add(ColorEvent.to_green);
                    },
                    child: const Text("green color"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
