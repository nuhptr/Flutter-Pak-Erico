import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan_46_flutter_bloc_update1/bloc/counter_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    CounterBloc blocCounter = BlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc v1 dan Ekstensi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.number.toString(),
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.w400),
                );
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    blocCounter.add(Decrement());
                  },
                  child: Icon(Icons.arrow_downward),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    blocCounter.add(Increment());
                  },
                  child: Icon(Icons.arrow_upward),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
