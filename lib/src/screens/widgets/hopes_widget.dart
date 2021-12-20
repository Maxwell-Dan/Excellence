import 'package:flutter/material.dart';

class HopesWidget extends StatefulWidget {
  TextEditingController? fears;
  TextEditingController? hope1;
  TextEditingController? hope2;
  HopesWidget({Key? key, this.fears, this.hope1, this.hope2}) : super(key: key);

  @override
  _HopesWidgetState createState() => _HopesWidgetState();
}

class _HopesWidgetState extends State<HopesWidget> {
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
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLength: 40,
              controller: widget.fears,
              autocorrect: true,
              decoration: const InputDecoration(
                  hintText: 'write your fears', border: InputBorder.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 3,
              controller: widget.hope1,
              autocorrect: true,
              decoration: const InputDecoration(
                  hintText: 'write what you hope for',
                  border: InputBorder.none),
            ),
          ),
          Container(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 4,
              controller: widget.hope2,
              autocorrect: true,
              decoration: const InputDecoration(
                  hintText: 're-write hope to affirm it',
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
