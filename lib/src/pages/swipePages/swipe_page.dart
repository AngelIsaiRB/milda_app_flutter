import 'package:flutter/material.dart';
import 'package:m_app/src/helpers/images_staics_helper.dart';
import 'package:m_app/src/widgets/appBar_custom_widget.dart';
import 'package:m_app/src/widgets/swipeCard/tinder_swipecard.dart';



class SwipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: CustomAppBar(),
      body: TinderSwipeCard(
        demoProfiles: demoProfiles,
        myCallback: (decision) {
          print(decision);
        },

      )
    );
  }
}