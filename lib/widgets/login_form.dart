import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
        child: Column(
        children:<Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: "EMAIL ADDRESS"),
          )
        ]
      ),
    );
  }
}