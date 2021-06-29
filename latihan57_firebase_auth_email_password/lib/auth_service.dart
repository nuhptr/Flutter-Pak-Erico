import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  // TODO: signUp email and password
  static Future<User?> signUp(String? email, String? password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email!, password: password!);
      User? user = credential.user;

      return user!;
    } catch (e) {
      print(e);
    }
  }

  // TODO: sign in
  static Future<User?> signIn(String? email, String? password) async {
    try {
      UserCredential? userCredential = await _auth.signInWithEmailAndPassword(
          email: email!, password: password!);
      User? user = userCredential.user;

      return user!;
    } catch (e) {
      print(e);
      return null;
    }
  }

  // TODO: sign out
  static Future<void> signOut() async {
    _auth.signOut();
  }

  // TODO: changes stream
  static Stream<User?> get firebaseUserStream => _auth.authStateChanges();
}
