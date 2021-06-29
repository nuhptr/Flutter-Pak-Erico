import 'package:flutter/material.dart';
import 'package:latihan57_firebase_auth_email_password/auth_service.dart';

class LandingPage extends StatelessWidget {
  var emailController = TextEditingController(text: "");
  var passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 100,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(hintText: "email"),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 100,
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                    hintText: "password minimal 6 karakter"),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  await AuthService.signUp(
                      emailController.text, passwordController.text);
                },
                child: const Text('Sign Up')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  await AuthService.signIn(
                      emailController.text, passwordController.text);
                },
                child: const Text('Sign In'))
          ],
        ),
      ),
    );
  }
}
