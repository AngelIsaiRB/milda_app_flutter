import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:m_app/src/helpers/images_staics_helper.dart';

import 'package:m_app/src/widgets/carrosuel_assets_widget.dart';


class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Container(  //contains the image and settings
              margin: EdgeInsets.only(top:20,bottom: 50),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: FadeInImage(              
                            placeholder: AssetImage("assets/love-atk.gif"),
                            image: NetworkImage("https://definicionde.es/wp-content/uploads/2019/04/definicion-de-persona-min.jpg"),
                            height: 150,
                            width: 150,                      
                            fit: BoxFit.cover,
                            ),
                          ),
                          Text("Nombre se usuario")
                        ],
                      ),
                    ),
                    Container(
                      child: Column(   
                        // mainAxisAlignment: MainAxisAlignment.start,                  
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            child: Row(                           
                              children: [
                                FaIcon(FontAwesomeIcons.pencilAlt, ),
                                Container(width: 15,),
                                Text("Editar Perfil"),
                              ],
                            ),
                            onPressed: (){}
                            ),
                          MaterialButton(
                            child: Row(                            
                              children: [
                                FaIcon(FontAwesomeIcons.cogs, ),
                                Container(width: 15,),
                                Text("Ajustes"),
                              ],
                            ),
                            onPressed: (){}
                            ),
                          MaterialButton(
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.award, ),
                                Container(width: 15,),
                                Text("Ver validaciones"),
                              ],
                            ),
                            onPressed: (){}
                            ),
                        ],
                      ),
                    ),
                  ],

                )
              ),  //end part 1 (image-settinmgs)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Image(
                image: AssetImage("assets/PaqueteM.jpg"),
                fit: BoxFit.cover,                
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical:10),              
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                Container(
                  // margin: EdgeInsets.symmetric(vertical: 5, horizontal:20),
                  child: Image(
                  image: AssetImage("assets/Paquete_D.png"),
                  width: MediaQuery.of(context).size.width *0.45,
                  fit: BoxFit.cover,                
                  ),
                ),
                Container(width: 20,),
                Image(
                image: AssetImage("assets/Paquete_E.png"),
                width: MediaQuery.of(context).size.width *0.45,
                fit: BoxFit.cover,                
                ),
                  ],
                ),
              ), //end images diamont elite
              Container(
                child: CarroselAssetsaImages(images:imagesPubliciti)
              )
            ],
          ),
        ),
      ),
    );
  }



  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: IconButton(
        icon: FaIcon(FontAwesomeIcons.userAlt, size: 30,color: Colors.red,),           
        onPressed: (){}
      ),
      leading: IconButton(
        icon: FaIcon(FontAwesomeIcons.home, size: 25,color: Colors.grey,),           
        onPressed: (){}
      ),
      actions: [
        GestureDetector(
          onTap: () {
               Navigator.pushReplacementNamed(context, "homePage");
              },
          child: Container(
            margin: EdgeInsets.all(10),
            child: Image(
              image: AssetImage("assets/Swipe_Apagado.ico"),
              fit: BoxFit.cover,                
              ),
            ),),
      ],
    );
  }
}     