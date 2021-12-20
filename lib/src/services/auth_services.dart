import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthServices extends ChangeNotifier {
  // initialize firebase auth
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  // sign up with email and password
  Future<User?> signup(String email, String password) async {
    try {
      UserCredential _credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      _user = _credential.user;
      return _user;
    } catch (e) {
      e.toString();
    }
  }

  // sign in with email and password
  Future<User?> signin(String email, String password) async {
    try {
      UserCredential _credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      _user = _credential.user;
      return _user;
    } catch (e) {
      e.toString();
    }
  }

  // get the auth state
  Stream<User?> get authState => _auth.authStateChanges();

  // sign out
  Future<User?> signout() async {
    try {
      await _auth.signOut();
    } catch (e) {
      e.toString();
    }
  }
}
