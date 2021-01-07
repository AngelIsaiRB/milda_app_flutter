import 'package:flutter/material.dart';
import 'package:m_app/src/pages/login.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: "login",
      routes: {
        "login": (BuildContext context) => LoginPage(),
      },
    );
  }
}