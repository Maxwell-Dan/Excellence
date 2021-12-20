import 'package:excellence/src/screens/widgets/container_widgets.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // ignore: sized_box_for_whitespace
        DashBoardContainer(
          image: const DecorationImage(
              image: AssetImage('assets/images/gratitude.png'),
              fit: BoxFit.cover),
          text: 'Gratitude',
        ),
        DashBoardContainer(
            image: const DecorationImage(
                image: AssetImage('assets/images/affirmation.png'),
                fit: BoxFit.cover),
            text: 'Affirmations'),
        DashBoardContainer(
            image: const DecorationImage(
                image: AssetImage('assets/images/hopes.png'),
                fit: BoxFit.cover),
            text: 'Hopes')
      ],
    ));
  }
}
