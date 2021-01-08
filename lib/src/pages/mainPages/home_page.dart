import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:m_app/src/helpers/images_staics_helper.dart';
import 'package:m_app/src/widgets/Carrousel_images_widget.dart';
import 'package:m_app/src/widgets/image_principal_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ImagePrincipalWidget(),
            textSubtitles("Sugerencias para ti - SMART M"),
            CarroselImages(images: imagesHelper),
            textSubtitles("Tops populares"),            
            CarroselImages(images: imagesHelper),
            textSubtitles("3 Stars"),
            CarroselImages(images: imagesHelper),
            textSubtitles("Quien te ha dado like"),
            CarroselImages(images: imagesHelper),
            textSubtitles(" Mentores"),
            CarroselImages(images: imagesHelper),
            textSubtitles("Apparel"),
            CarroselImages(images: imagesApparelHelper),
            textSubtitles("Life Style"),
            CarroselImages(images: imagesLifeStyleHelper),

          ],
        ),
      )
    );
  }

  Widget textSubtitles(String text){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal:10),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(text, style: TextStyle(fontSize: 19, fontWeight:FontWeight.bold),)),
    );
  }
}