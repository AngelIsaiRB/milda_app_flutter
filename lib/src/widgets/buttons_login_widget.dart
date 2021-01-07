import 'package:flutter/material.dart';


class ButtonLogin extends StatelessWidget {
  final Color color;
  final Function onTap;
  final String text;

  const ButtonLogin({Key key,
   @required this.color,
   @required this.onTap,
   @required this.text}
   ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),                      
        decoration: BoxDecoration(                
          color: this.color,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: double.infinity,
        height: 40,
        child: Center(child: Text(this.text, style: TextStyle(color: Colors.white))),
      ),
      onTap: this.onTap,
    );
  }
}