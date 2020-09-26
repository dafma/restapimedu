import 'package:curso_rest_api_loginv2/widgets/circle.dart';
import 'package:curso_rest_api_loginv2/widgets/icon_container.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: -(size.width * 0.8) * 0.2,
              right: -(size.width * 0.8) * 0.1,
              child: Circle(
                size: size.width * 0.8,
                colors: [
                  Colors.pinkAccent,
                  Colors.pink,
                ]
              ),
            ),
            Positioned(
              top: -(size.width * 0.4) * 0.4,
              left: -(size.width * 0.5) * 0.2,
              child: Circle(
                size: size.width * 0.6,
                colors: [
                  Colors.orange,
                  Colors.deepOrangeAccent,
                ]
              ),
            ),
            Positioned(
              top: 30,
              child: IconContainer()
            ),
          ]
        ),
      ),
    );
  }
}