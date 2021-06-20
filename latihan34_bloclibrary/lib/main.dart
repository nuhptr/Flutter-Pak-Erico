import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'color_bloc.dart';
import 'color_event.dart';

Future<void> main() async {
  // TODO: lock screen device orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // TODO: untuk menentukan penyimpanannya => path_provider (pub.dev)
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // TODO: jangan lupa import flutter_bloc (pub.dev)
        home: BlocProvider<ColorBloc>(
          create: (_) => ColorBloc(Colors.green.shade300),
          child: Home(),
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: deklarasikan variabel kelas colorBloc
    ColorBloc? colorBloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // TODO: memasukan event to_green
          FloatingActionButton(
            elevation: 0,
            onPressed: () => colorBloc.add(ColorEvent.to_green),
            backgroundColor: Colors.green.shade300,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            elevation: 0,
            // TODO: memasukan event to_blue
            onPressed: () => colorBloc.add(ColorEvent.to_blue),
            backgroundColor: Colors.blue[300],
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (_, state) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: state,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        ),
      ),
    );
  }
}
