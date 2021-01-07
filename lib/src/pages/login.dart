import 'package:flutter/material.dart';
import 'package:m_app/src/widgets/buttons_login_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
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
            initialButtons(context),
                Container(
                height:200,
              ),
            ],
          ),
        ),
      ),
    );    
  }

  Widget initialButtons(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height:20
        ),
        ButtonLogin(
              color: Color.fromRGBO(59, 89, 152,1 ),
              text: "iniciar sesion con Facebook",
              onTap: (){
              },
            ),
        Container(
          height:20
        ),
        ButtonLogin(
              color: Color.fromRGBO(229, 32, 32, 1),
              text: "iniciar sesion con tu Email",
              onTap: (){
                Navigator.of(context).pushNamed("loginEmailPass");
              },
            ),
      ],
    );
  }

  
}