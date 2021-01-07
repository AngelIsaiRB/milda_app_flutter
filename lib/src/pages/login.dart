import 'package:flutter/material.dart';
import 'package:m_app/src/widgets/buttons_login_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height:100,
            ),
            Container(            
              child: Image(image: AssetImage("assets/Logo_App.png"),
              width: 200,
              ),            
            ),
            Container(
              child: Image(image: AssetImage("assets/LogoInicioAB.png"),
               width: 200,
               ),            
            ),
           
              ButtonLogin(
              color: Color.fromRGBO(59, 89, 152,1 ),
              text: "iniciar sesion con Facebook",
              onTap: ()=>{},
            ),
            ButtonLogin(
              color: Color.fromRGBO(229, 32, 32, 1),
              text: "iniciar sesion con tu Email",
              onTap: ()=>{},
            ),
              Container(
              height:200,
            ),
          ],
        ),
      ),
    );
  }
}