import 'package:flutter/material.dart';

class HorizontalSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0, // Important
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'images/cats/tshirt.png', image_caption: 'Shirt'),
          Category(
              image_location: 'images/cats/dress.png', image_caption: 'Dress'),
          Category(
              image_location: 'images/cats/accessories.png',
              image_caption: 'Accessories'),
          Category(
              image_location: 'images/cats/formal.png',
              image_caption: 'Formal'),
          Category(
              image_location: 'images/cats/informal.png',
              image_caption: 'Informal'),
          Category(
              image_location: 'images/cats/jeans.png', image_caption: 'Jeans'),
          Category(
              image_location: 'images/cats/shoe.png', image_caption: 'Shoe'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  // Constructor
  Category({this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0, //Important
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: new Text(
                  image_caption,
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                )),
          ),
        ),
      ),
    );
  }
}
