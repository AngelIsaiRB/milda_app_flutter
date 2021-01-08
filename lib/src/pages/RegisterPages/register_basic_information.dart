import 'package:flutter/material.dart';
import 'package:m_app/src/widgets/buttons_login_widget.dart';
import 'package:m_app/src/widgets/custom_textfield_widget.dart';

class RegisterBasicInformation extends StatelessWidget {
  const RegisterBasicInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Perfil"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              texthelper("Nombre de usuario"),
              inputText(onChange: (value){

              }, text:"Introduce tu nombre"),
              texthelper("Email"),
              inputText(onChange: (value){

              }, text: "Introduce tu correo"),
              texthelper("Confirme email"),
              inputText(onChange: (value){

              }, text: "Introduce tu correo nuevamente"),
              texthelper("Contraseña"),
              inputText(onChange: (value){

              }, text: "Contraseña Segura"),
              texthelper("Confirme contraseña"),
              inputText(onChange: (value){

              }, text: "Contraseña Segura"),
              ButtonLogin(
                 color: Color.fromRGBO(229, 32, 32, 1),
                 text: "Siguiente",
                 onTap: (){},
              )
            ],
          ),
        ),
      )
    );
  }

  Widget texthelper(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal:20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal:10),
      width: double.infinity,
      color: Colors.grey[850],
      child: Text(text, style: TextStyle(fontSize: 18),)
      
    );
  }

  Widget inputText({
    Function onChange,
    String text
  }) {
    return Container(
          margin: EdgeInsets.only(top:1,bottom: 10,left: 20,right: 20),
          decoration: BoxDecoration(
            color: Color.fromRGBO(236, 240, 241, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: CustomTextField(onChange: onChange, text: text)
          );
  }

  
}