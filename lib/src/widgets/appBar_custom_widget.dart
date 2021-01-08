
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
    CustomAppBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

    @override
    final Size preferredSize; // default is 56.0

    @override
    _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{

    @override
    Widget build(BuildContext context) {
         return AppBar(
        title: Image(
          image: AssetImage("assets/encabezado1.png"),          
          fit: BoxFit.contain,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.comment, size: 30,), 
              onPressed: (){})
          ],
         leading: IconButton(              
              icon: FaIcon(FontAwesomeIcons.userAlt, size: 30,), 
              onPressed: (){}),
      );
    }
}

