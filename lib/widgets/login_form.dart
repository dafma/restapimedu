import 'package:curso_rest_api_loginv2/utils/responsive.dart';
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
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 30,
        child: Container(
          // con el contrains decimos que tendremos una ancho mazimo de 400
          constraints: BoxConstraints(

            maxWidth: responsive.isTablet?400:2500,
          ),
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
                child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: responsive.dp(2.5)),),
                onPressed: (){},
                color: Colors.pinkAccent
              ),
            )    
          ]
      ),
        ),
    );
  }
}