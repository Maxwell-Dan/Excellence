import 'package:flutter/material.dart';

class HopesTemplate extends StatefulWidget {
  String? fears;
  String? hope1;
  String? hope2;
  HopesTemplate({Key? key, this.fears, this.hope1, this.hope2})
      : super(key: key);

  @override
  _PadFormWidgetState createState() => _PadFormWidgetState();
}

class _PadFormWidgetState extends State<HopesTemplate> {
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/ihope.png'),
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
                child: Text(widget.fears.toString())),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.hope1.toString())),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/hopes.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                constraints: const BoxConstraints.expand(
                  width: 300,
                  height: 220,
                ),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/ihope.png'),
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
                child: Text(widget.hope2.toString())),
          ]),
        ],
      ),
    );
  }
}
