import 'package:excellence/src/screens/Theme/excellence_theme.dart';
import 'package:flutter/material.dart';

class WelcomeStack extends StatelessWidget {
  const WelcomeStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(45, 12, 12, 0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
              width: 400,
              height: 200,
              //  constraints: const BoxConstraints.expand(width: 400, height: 150),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(color: Colors.orangeAccent, spreadRadius: 3)
                  ],
                  image: const DecorationImage(
                      image: AssetImage('assets/images/welcome.png'),
                      fit: BoxFit.cover)),
              child: const Card(
                semanticContainer: true,
                color: Colors.transparent,
                elevation: 1.2,
                shadowColor: Colors.orange,
              )),
          Positioned(
              top: 80,
              left: 10,
              child: Text(' I am Loved, Great and Perfect',
                  style: ExcellenceTheme.textTheme.headline2)),
          Positioned(
            top: 170,
            left: 10,
            right: 10,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(color: Colors.orangeAccent, spreadRadius: 3)
                  ],
                ),
                constraints: const BoxConstraints.expand(
                  width: 350,
                  height: 60,
                ),
                child: const Card(
                  semanticContainer: true,
                )),
          ),
          Positioned(
              top: 180,
              left: 40,
              child:
                  Text(' Smile', style: ExcellenceTheme.textTheme.headline1)),
        ],
      ),
    );
  }
}
