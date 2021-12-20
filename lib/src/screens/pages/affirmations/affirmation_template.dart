import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AffirmationsTemplate extends StatefulWidget {
  String? affirmations;
  AffirmationsTemplate({Key? key, this.affirmations}) : super(key: key);

  @override
  _PadFormWidgetState createState() => _PadFormWidgetState();
}

class _PadFormWidgetState extends State<AffirmationsTemplate> {
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
                offset: const Offset(0, 3)),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      constraints: const BoxConstraints.expand(
        width: 300,
        height: 420,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/affirmation.png'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            constraints: const BoxConstraints.expand(
              width: 400,
              height: 220,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.affirmations.toString())),
        ],
      ),
    );
  }
}
