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
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(
                color: Colors.black12
              ))
            ),
            child: Row(
              children: [
                Expanded(
                    child: InputText(
                    obscureText: true,
                    borderEnabled: false,
                    label: "PASSWORD"
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.symmetric(vertical:10),
                  onPressed: (){}, 
                  child: Text("Forgot the Password", style: TextStyle(fontWeight: FontWeight.bold)))
              ],
            ),
          ),
          SizedBox(height:20),    
          SizedBox(
            width: double.infinity,
              child: FlatButton(
                //pading al button
              padding: EdgeInsets.symmetric(vertical:15),  
              child: Text("Sign In", style: TextStyle(color: Colors.white),),
              onPressed: (){},
              color: Colors.pinkAccent
            ),
          )    
        ]
      ),
    );
  }
}