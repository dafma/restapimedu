import 'package:flutter/material.dart';
import 'input_text.dart';

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
          InputText(
            keyboardType: TextInputType.emailAddress,
            label: "EMAIL ADDRESS"),  
          InputText(
            obscureText: true,
            label: "PASSWORD"
          ),        
        ]
      ),
    );
  }
}