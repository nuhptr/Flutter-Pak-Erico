import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // TODO: sign out annonymously
  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: get user uid
    final FirebaseAuth user = FirebaseAuth.instance;
    User? userID = user.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                _signOut();
              },
              icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: Center(
        child: Text(userID!.uid),
      ),
    );
  }
}
