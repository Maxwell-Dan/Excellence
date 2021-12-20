import 'package:excellence/src/models/gratitude_model.dart';
import 'package:excellence/src/screens/Theme/excellence_theme.dart';
import 'package:excellence/src/screens/widgets/form_widgets.dart';
import 'package:flutter/material.dart';

class GratitudePad extends StatefulWidget {
  const GratitudePad({Key? key}) : super(key: key);

  @override
  _GratitudePadState createState() => _GratitudePadState();
}

class _GratitudePadState extends State<GratitudePad> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _grateful1 = TextEditingController();
  final TextEditingController _grateful2 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    GratitudeModel _model = GratitudeModel();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Gratitude Note Pad',
              style: ExcellenceTheme.textTheme.headline1)),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              PadFormWidget(
                title: _title,
                text1: _grateful1,
                text2: _grateful2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _model.gratittude(
                            _title.text, _grateful1.text, _grateful2.text);
                        const _snackBar = SnackBar(
                            content: Text('gratitude successfully saved'));
                        ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                      }

                      if (_title.text.isNotEmpty ||
                          _grateful1.text.isNotEmpty ||
                          _grateful2.text.isNotEmpty) {
                        _title.clear();
                        _grateful1.clear();
                        _grateful2.clear();
                      }
                    },
                    child: const Icon(Icons.post_add_outlined)),
              )
            ],
          ),
        ),
      )),
    );
  }
}
