import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan_42_multibloc_page/bloc/color_bloc.dart';
import 'package:latihan_42_multibloc_page/bloc/counter_bloc.dart';
import 'package:latihan_42_multibloc_page/ui/draft_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    // ignore: close_sinks
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<ColorBloc, Color>(
      builder: (BuildContext context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (BuildContext context, number) => GestureDetector(
                  onTap: () {
                    counterBloc.add(number + 1);
                  },
                  child: Text(
                    number.toString(),
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ignore: missing_required_param
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: (color == Colors.pink)
                            ? CircleBorder(
                                side: BorderSide(color: Colors.black, width: 3))
                            : CircleBorder(),
                        primary: Colors.pink),
                    onPressed: () {
                      colorBloc.add(ColorEvent.toPink);
                    },
                  ),
                  // ignore: missing_required_param
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: (color == Colors.amber)
                            ? CircleBorder(
                                side: BorderSide(color: Colors.black, width: 3))
                            : CircleBorder(),
                        primary: Colors.amber),
                    onPressed: () {
                      colorBloc.add(ColorEvent.toAmber);
                    },
                  ),
                  // ignore: missing_required_param
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: (color == Colors.purple)
                            ? CircleBorder(
                                side: BorderSide(color: Colors.black, width: 3))
                            : CircleBorder(),
                        primary: Colors.purple),
                    onPressed: () {
                      colorBloc.add(ColorEvent.toPurple);
                    },
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
