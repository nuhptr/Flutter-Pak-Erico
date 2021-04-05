import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan_41_mvvm/bloc/user_bloc.dart';
import 'package:latihan_41_mvvm/model/user.dart';
import 'package:latihan_41_mvvm/ui/user_card.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (_) => UserBloc(UnitializedUser()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    UserBloc bloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('MVVM Learn')),
      body: ListView(
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  bloc.add(random.nextInt(10) + 1);
                },
                child: Text('Pick Random User'),
              ),
              BlocBuilder<UserBloc, User>(
                builder: (BuildContext context, user) =>
                    (user is UnitializedUser) ? Container() : UserCard(user),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
