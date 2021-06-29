import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_page.dart';
import 'login_page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User? firebaseUser = Provider.of<User>(context);

    return (firebaseUser == null) ? LandingPage() : MainPage(firebaseUser);
  }
}
