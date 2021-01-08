import 'package:flutter/material.dart';


class ImagePrincipalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed("SwipePage");
      },
      child: Container(
              width:500,            
              margin: EdgeInsets.symmetric(horizontal: 30, vertical:10),
              child: Stack(
                children: [ 
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),              
                    child: FadeInImage(              
                      placeholder: AssetImage("assets/love-atk.gif"),
                      image: NetworkImage("https://definicionde.es/wp-content/uploads/2019/04/definicion-de-persona-min.jpg"),
                      height: 400,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      ),
                  ),                
                    Container(
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [ 
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Text("90% de coincidencia para ti", style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold)))
                        ],
                      ),
                    )
               
                ],
              ),
            ),
    );
  }
}