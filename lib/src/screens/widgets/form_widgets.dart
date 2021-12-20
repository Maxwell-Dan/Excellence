import 'package:flutter/material.dart';

class PadFormWidget extends StatefulWidget {
  TextEditingController? title;
  TextEditingController? text1;
  TextEditingController? text2;
  PadFormWidget({Key? key, this.title, this.text1, this.text2})
      : super(key: key);

  @override
  _PadFormWidgetState createState() => _PadFormWidgetState();
}

class _PadFormWidgetState extends State<PadFormWidget> {
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
              controller: widget.title,
              autocorrect: true,
              decoration: const InputDecoration(
                  hintText: 'title', border: InputBorder.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 3,
              controller: widget.text1,
              autocorrect: true,
              decoration: const InputDecoration(
                  hintText: 'what are you grateful for?',
                  border: InputBorder.none),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/gratitude.png'),
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
              controller: widget.text2,
              autocorrect: true,
              decoration: const InputDecoration(
                  hintText: 'what are you grateful for?',
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
