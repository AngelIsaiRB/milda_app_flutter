import 'package:flutter/material.dart';
import 'package:m_app/src/widgets/buttons_login_widget.dart';

class LoginEmailPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
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
            contain(),
                Container(
                height:200,
              ),
            ],
          ),
        ),
      ),
    ); 
  }

  Widget contain(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            
            margin: EdgeInsets.only(top:30),
            decoration: BoxDecoration(
              color: Color.fromRGBO(236, 240, 241, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(                        
              keyboardType: TextInputType.emailAddress,        
              decoration: InputDecoration(                 
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.transparent)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.transparent)
                ),                
                focusColor: Colors.black,                
                // hintText: "ejemplo@correo.com",
                hintText: "Email",  

              ),
              onChanged: (value){print(value);},        
            ),
          ),
          Container(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(236, 240, 241, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(          
              keyboardType: TextInputType.emailAddress,        
              decoration: InputDecoration(      
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.transparent)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.transparent)
                ),                
                focusColor: Colors.black,                
                // hintText: "ejemplo@correo.com",
                hintText: "Password",         
              ),
              onChanged: (value){print(value);},        
            ),
          ),
            Container(height: 20,),
          ButtonLogin(
              color: Color.fromRGBO(229, 32, 32, 1),
              text: "Login",
              onTap: (){},
            ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Text("¿Recuperar contraseña?", style: TextStyle(color: Colors.white),),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text("¿Registrarse?", style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          )  
        ],
      ),
    );
  }
}
