import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DashBoardContainer extends StatelessWidget {
  DecorationImage? image;
  final String text;
  DashBoardContainer({Key? key, this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(width: 240, height: 70),
        decoration: BoxDecoration(
            color: Colors.white,
            image: image,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: const [
              BoxShadow(color: Colors.orangeAccent, spreadRadius: 3)
            ]),
        child: Center(child: Text(text)));
  }
}
