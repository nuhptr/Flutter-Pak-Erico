import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter/counter_bloc.dart';

void main() {
  // TODO: lock device screen orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (_) => CounterBloc(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: buat variabel pernampung blocprovider
    CounterBloc? counterBloc = BlocProvider.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) => Text(
                      state.number.toString(),
                      style: const TextStyle(
                          fontSize: 80, fontWeight: FontWeight.w400),
                    )),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    onPressed: () {
                      counterBloc.add(Decrement());
                    },
                    child: const Icon(Icons.arrow_downward)),
                const SizedBox(width: 20),
                FloatingActionButton(
                    onPressed: () {
                      counterBloc.add(Increment());
                    },
                    child: const Icon(Icons.arrow_upward))
              ],
            )
          ],
        ),
      ),
    );
  }
}
