import 'package:excellence/src/screens/home.dart';
import 'package:excellence/src/screens/pages/authentication/signin.dart';
import 'package:excellence/src/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthState extends StatefulWidget {
  const AuthState({Key? key}) : super(key: key);

  @override
  _AuthStateState createState() => _AuthStateState();
}

class _AuthStateState extends State<AuthState> {
  @override
  Widget build(BuildContext context) {
    AuthServices _authState = Provider.of<AuthServices>(context);
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: _authState.authState,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(child: Text('something went wrong'));
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return const Home();
            } else {
              return const SignIn();
            }
          }),
    );
  }
}
