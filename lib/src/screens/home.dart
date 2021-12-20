import 'package:excellence/src/screens/Theme/excellence_theme.dart';
import 'package:excellence/src/screens/pages/affirmations/affirmations.dart';
import 'package:excellence/src/screens/pages/gratittude/gratittude.dart';
import 'package:excellence/src/screens/pages/hopes/hopes.dart';
import 'package:excellence/src/screens/welcome_stack.dart';
import 'package:excellence/src/screens/widgets/container_widgets.dart';
import 'package:excellence/src/services/auth_services.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthServices _service = AuthServices();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Execllence', style: ExcellenceTheme.textTheme.headline1),
        actions: [
          TextButton(
            onPressed: () async {
              _service.signout();
            },
            child: const Text('Log out'),
          )
        ],
      ),
      body: Center(
        child: Column(children: [
          const WelcomeStack(),
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Gratitude()));
                },
                child: DashBoardContainer(text: 'Gratitude')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Affirmations()));
                },
                child: DashBoardContainer(text: 'Affirmations')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Hopes()));
                },
                child: DashBoardContainer(text: 'Hopes')),
          )
        ]),
      ),
    );
  }
}
