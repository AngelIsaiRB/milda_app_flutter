import 'package:flutter/material.dart';
import 'package:m_app/src/pages/RegisterPages/register_basic_information.dart';
import 'package:m_app/src/pages/login.dart';
import 'package:m_app/src/pages/login_email_password_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: "login",
      theme: ThemeData.dark().copyWith(
        hintColor: Colors.black,
        cursorColor: Colors.black,
        
        
      ),
      routes: {
        "login": (BuildContext context) => LoginPage(),
        "loginEmailPass": (BuildContext context) => LoginEmailPasswordPage(),
        "registerBasicInformation": (BuildContext context) => RegisterBasicInformation(),
      },
    );
  }
}