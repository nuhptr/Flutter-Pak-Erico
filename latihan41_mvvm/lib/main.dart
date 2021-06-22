import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan41_mvvm/user.dart';
import 'package:latihan41_mvvm/user_bloc.dart';
import 'user_card.dart';

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
    return BlocProvider<UserBloc>(
        create: (BuildContext context) => UserBloc(Uninitialized()),
        child: MaterialApp(debugShowCheckedModeBanner: false, home: home()));
  }

  Widget home() => HomePage();
}

class HomePage extends StatelessWidget {
  var random = Random();
  @override
  Widget build(BuildContext context) {
    // TODO: create properties of class
    var bloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  bloc.add(random.nextInt(10) + 1);
                },
                child: const Text("Pick Random User")),
            BlocBuilder<UserBloc, User>(
                builder: (BuildContext context, user) => (user is Uninitialized)
                    ? Center(
                        child: Column(children: [
                          const SizedBox(height: 20),
                          const CircularProgressIndicator()
                        ]),
                      )
                    : UserCard(user)),
          ],
        ),
      ),
    );
  }
}
