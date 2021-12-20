import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AffirmationsWidget extends StatefulWidget {
  TextEditingController? affirmations;

  AffirmationsWidget({Key? key, this.affirmations}) : super(key: key);

  @override
  _AffirmationsWidgetState createState() => _AffirmationsWidgetState();
}

class _AffirmationsWidgetState extends State<AffirmationsWidget> {
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/affirmation.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              constraints: const BoxConstraints.expand(
                width: 250,
                height: 120,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 3,
              controller: widget.affirmations,
              autocorrect: true,
              decoration: const InputDecoration(
                  hintText: 'affirm blessings in your life',
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
