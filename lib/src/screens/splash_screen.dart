import 'package:excellence/src/screens/Theme/excellence_theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Text('Excellence',
                style: ExcellenceTheme.textTheme.headline1)));
  }
}
