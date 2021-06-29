import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:latihan57_firebase_auth_email_password/auth_service.dart';

class MainPage extends StatelessWidget {
  User? user;

  MainPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(user!.uid),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  await AuthService.signOut();
                },
                child: const Text('Sign Out'))
          ],
        ),
      ),
    );
  }
}
