import 'package:excellence/src/models/affirmations_model.dart';
import 'package:excellence/src/screens/Theme/excellence_theme.dart';
import 'package:excellence/src/screens/widgets/affirmations_widget.dart';
import 'package:flutter/material.dart';

class AffirmationPad extends StatefulWidget {
  const AffirmationPad({Key? key}) : super(key: key);

  @override
  _AffrimationsPadState createState() => _AffrimationsPadState();
}

class _AffrimationsPadState extends State<AffirmationPad> {
  final TextEditingController affirmations = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    AffirmationsModel _model = AffirmationsModel();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Affrimations Note Pad',
              style: ExcellenceTheme.textTheme.headline1)),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AffirmationsWidget(
                affirmations: affirmations,
              ),
              FloatingActionButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _model.affirmation(
                        affirmations.text,
                      );
                      const _snackBar = SnackBar(
                          content: Text('Affrimations successfully saved'));
                      ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                    }

                    if (affirmations.text.isNotEmpty) {
                      affirmations.clear();
                    }
                  },
                  child: const Icon(Icons.post_add_outlined))
            ],
          ),
        ),
      )),
    );
  }
}
