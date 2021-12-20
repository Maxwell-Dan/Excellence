import 'package:flutter/material.dart';

class GratitudeTemplate extends StatefulWidget {
  String? title;
  String? gratitude1;
  String? gratitude2;
  GratitudeTemplate({Key? key, this.title, this.gratitude1, this.gratitude2})
      : super(key: key);

  @override
  _PadFormWidgetState createState() => _PadFormWidgetState();
}

class _PadFormWidgetState extends State<GratitudeTemplate> {
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
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(widget.title.toString())),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.gratitude1.toString())),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/gratitude.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 220,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.gratitude2.toString())),
        ],
      ),
    );
  }
}
