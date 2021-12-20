import 'package:excellence/src/screens/Theme/excellence_theme.dart';
import 'package:excellence/src/screens/pages/authentication/signin.dart';
import 'package:excellence/src/screens/widgets/auth_form.dart';
import 'package:excellence/src/services/auth_services.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AuthServices _auth = AuthServices();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Welcome to Excellence',
          style: ExcellenceTheme.textTheme.headline1,
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const SignIn()));
              },
              child: const Text('Sign In'))
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/bg-right.png'),
                  fit: BoxFit.cover),
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
          child: Card(
            semanticContainer: true,
            color: Colors.transparent,
            elevation: 5.0,
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    AuthForm(
                        email: _email,
                        password: _password,
                        isVisible: _obscureText),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: const Text('show password')),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _auth.signup(_email.text, _password.text);
                            const CircularProgressIndicator();
                          }
                        },
                        child: const Text('Sign Up'))
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
