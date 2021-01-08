import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final Function onChange;
  final String text;
  final TextInputType textType;
  final bool obscureText;

  const CustomTextField({Key key, 
  @required this.onChange, 
  @required this.text, 
  this.obscureText= false,
  this.textType=TextInputType.emailAddress,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return TextField(                        
              keyboardType: this.textType,    
              obscureText: this.obscureText,
              style: TextStyle(color:Colors.black),
              decoration: InputDecoration(                 
                
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.transparent),                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.transparent)
                ),                
                focusColor: Colors.black,                
                // hintText: "ejemplo@correo.com",
                hintText: this.text,  
                
              ),
              onChanged: this.onChange,        
            );
  }
}