import 'package:flutter/material.dart';

class PadWidget extends StatefulWidget {
  const PadWidget({Key? key}) : super(key: key);

  @override
  _PadWidgetState createState() => _PadWidgetState();
}

class _PadWidgetState extends State<PadWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.orangeAccent.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3))
          ],
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      constraints: const BoxConstraints.expand(
        width: 300,
        height: 420,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            Title(
                color: Colors.black,
                child: const Text('I am grateful for good health')),
            const Text(
              'Long post to write here '
              'Long post to write here'
              'Long post to write here'
              'Long post to write here'
              'Long post to write here'
              'Long post to write here'
              'Long post to write here'
              'Long post to write here'
              'Long pos to write here',
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg-right.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              constraints: const BoxConstraints.expand(
                width: 250,
                height: 120,
              ),
            ),
            const Text(
              'Long post to write here '
              'Long post to write here'
              'Long post to write here'
              'Long pos to write here',
            ),
          ],
        ),
      ),
    );
  }
}
