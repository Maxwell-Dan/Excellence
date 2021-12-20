import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  final TextEditingController email;
  final TextEditingController password;
  final bool isVisible;
  const AuthForm(
      {Key? key,
      required this.email,
      required this.password,
      required this.isVisible})
      : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: widget.email,
          decoration: const InputDecoration(
              hintText: 'email',
              icon: Icon(Icons.email_outlined),
              border: InputBorder.none),
          validator: (val) {
            if (val == null || val.isEmpty) {
              return 'please enter email';
            }
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          obscureText: widget.isVisible,
          controller: widget.password,
          decoration: const InputDecoration(
              hintText: 'password',
              icon: Icon(Icons.lock_outline),
              border: InputBorder.none),
          validator: (val) {
            if (val == null || val.isEmpty) {
              return 'please enter password';
            }
          },
        ),
      ),
    ]);
  }
}
