import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class images_carousel extends StatefulWidget {
  @override
  _images_carouselState createState() => _images_carouselState();
}

class _images_carouselState extends State<images_carousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height It'll be taking from the top
      height: 200.0,
      child: new Carousel(
        // covering the whole horizontal part
        boxFit: BoxFit.cover,
        images: [
          // we must have theses imgs in the main folder itself (hence asset)
          AssetImage('images/c1.jpg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m1.jpeg'),
        ],
        // Animnation (Shift of the pics)
        autoplay: true,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0, // below dots size
        indicatorBgPadding: 2.0, //area taken by dots
      ),
    );
  }
}
