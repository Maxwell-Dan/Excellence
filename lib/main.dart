import 'package:excellence/src/screens/Theme/excellence_theme.dart';
import 'package:excellence/src/screens/authState/auth_state.dart';
import 'package:excellence/src/screens/splash_screen.dart';
import 'package:excellence/src/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider<AuthServices>(
      create: (context) => AuthServices(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ExcellenceTheme.lightThemeData();
    return MaterialApp(
      title: 'Excellence',
      theme: theme,
      home: const InitializeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// initializeFirebase
class InitializeApp extends StatefulWidget {
  const InitializeApp({Key? key}) : super(key: key);

  @override
  _InitializeAppState createState() => _InitializeAppState();
}

class _InitializeAppState extends State<InitializeApp> {
  final Future<FirebaseApp> _initialize = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialize,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Something went wrong'),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return const AuthState();
          }
          return const SplashScreen();
        });
  }
}
