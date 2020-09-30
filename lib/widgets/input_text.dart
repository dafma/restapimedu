import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnabled;
  
  const InputText({
    Key key,  
    this.label="", 
    this.keyboardType = TextInputType.text,
    this.obscureText= false, 
    this.borderEnabled=true,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,
          decoration: InputDecoration(           
            labelText: label,
            contentPadding: EdgeInsets.symmetric(vertical: 5),
            border: this.borderEnabled ?  UnderlineInputBorder(
              borderSide: BorderSide(
                color : Colors.black12
              )
            ): InputBorder.none,
            labelStyle: TextStyle(
              color: Colors.black45, 
              fontWeight: FontWeight.w500)
          ),
        );
  }
}