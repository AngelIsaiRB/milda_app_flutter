import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images=[
      "",
      "",
      "",
      "",
      "",
    ];
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Container(
            width:500,            
            margin: EdgeInsets.symmetric(horizontal: 30, vertical:10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(              
                placeholder: AssetImage("assets/love-atk.gif"),
                image: NetworkImage("https://definicionde.es/wp-content/uploads/2019/04/definicion-de-persona-min.jpg"),
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
                ),
            ),
          )
        ],
      )
    );
  }
}