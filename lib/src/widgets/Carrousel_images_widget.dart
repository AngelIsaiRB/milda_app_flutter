import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarroselImages extends StatelessWidget {
  final List<String> images;

  const CarroselImages({Key key,
  @required this.images}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
              options: CarouselOptions(
                height: 200,
                // aspectRatio: 9/16,
                viewportFraction: 0.32,
                initialPage: 1,
                enableInfiniteScroll: false,
                reverse: false,
                // autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                // enlargeCenterPage: true,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
                pageSnapping: false,
                scrollPhysics: BouncingScrollPhysics(),   
                          
              ),
              items: images.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: FadeInImage(              
                          placeholder: AssetImage("assets/love-atk.gif"),
                          image: NetworkImage(i),                     
                          fit: BoxFit.cover,                       
                      ),
                    );
                  },
                );
             }).toList(),
            );
  }
}