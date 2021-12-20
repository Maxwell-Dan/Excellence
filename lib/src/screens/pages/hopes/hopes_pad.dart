import 'package:excellence/src/models/hopes_model.dart';
import 'package:excellence/src/screens/Theme/excellence_theme.dart';
import 'package:excellence/src/screens/widgets/hopes_widget.dart';
import 'package:flutter/material.dart';

class HopesPad extends StatefulWidget {
  const HopesPad({Key? key}) : super(key: key);

  @override
  _GratitudePadState createState() => _GratitudePadState();
}

class _GratitudePadState extends State<HopesPad> {
  final TextEditingController _fears = TextEditingController();
  final TextEditingController hopes1 = TextEditingController();
  final TextEditingController hopes2 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    HopesModel _model = HopesModel();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Hopes Note Pad',
              style: ExcellenceTheme.textTheme.headline1)),
      body: Center(
          child: Form(
        key: _formKey,
        child: Column(
          children: [
            HopesWidget(
              fears: _fears,
              hope1: hopes1,
              hope2: hopes2,
            ),
            FloatingActionButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _model.hopes(_fears.text, hopes1.text, hopes2.text);
                    const _snackBar =
                        SnackBar(content: Text('Hopes successfully saved.'));
                    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                  }

                  if (_fears.text.isNotEmpty ||
                      hopes1.text.isNotEmpty ||
                      hopes2.text.isNotEmpty) {
                    _fears.clear();
                    hopes1.clear();
                    hopes2.clear();
                  }
                },
                child: const Icon(Icons.post_add_outlined))
          ],
        ),
      )),
    );
  }
}
