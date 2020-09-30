import 'package:curso_rest_api_loginv2/utils/responsive.dart';
import 'package:curso_rest_api_loginv2/widgets/circle.dart';
import 'package:curso_rest_api_loginv2/widgets/icon_container.dart';
import 'package:curso_rest_api_loginv2/widgets/login_form.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    

    final Responsive responsive = Responsive.of(context);
    final double pinkSize = responsive.wp(80);
    final double orangeSize = responsive.wp(80);

    return Scaffold(
      body: GestureDetector(
        onTap: (){
          //detectar el click fuera del campo y cerrar el teclado
          FocusScope.of(context).unfocus();

        },
        child: SingleChildScrollView(
          child: Container(
          width: double.infinity,
          height: responsive.height,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: -(responsive.wp(80)) * 0.2,
                right: -(responsive.wp(80)) * 0.1,
                child: Circle(
                  size: responsive.wp(80),
                  colors: [
                    Colors.pinkAccent,
                    Colors.pink,
                  ]
                ),
              ),
              Positioned(
                top: -(responsive.wp(40)) * 0.4,
                left: -(responsive.wp(50)) * 0.2,
                child: Circle(
                  size: responsive.wp(60),
                  colors: [
                    Colors.orange,
                    Colors.deepOrangeAccent,
                  ]
                ),
              ),
              Positioned(
                top: 100,
                child: Column(
                    children:<Widget>[
                      IconContainer(
                        size: responsive.wp(17),
                      ),
                      SizedBox(height:responsive.dp(1.6)),
                      Text("Hello again \n Welcome Back",
                       textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: responsive.dp(1.6)
                        ),
                      )
                    ] 
                )
              ),
              LoginForm()
            ]
          ),
        ),
          
        ) 
      ),
    );
  }
}