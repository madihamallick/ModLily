import 'package:flutter/material.dart';

import 'package:modlily/components/Categories.dart';
import 'package:modlily/components/Carousel.dart';
import 'package:modlily/components/Drawer.dart';
import 'package:modlily/components/Recent_Products.dart';

void main() {
  runApp(new MaterialApp(
    // main widget within which all other widgets will reside
    debugShowCheckedModeBanner: false, // removing default DEBUG tag from top
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  // Homepage starts
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Instead of container here we use Scaffold
    return Scaffold(
      // Top header part
      appBar: new AppBar(
        backgroundColor: Colors.red[800],
        title: new Text('ModLily'),
        // Both search and cart Icon
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: () {}),
          new IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      // Header ends
      // Drawer (Side part) Header starts
      drawer: DrawerPart(),
      //  Body Starts
      body: new ListView(
        children: <Widget>[
          // Carousel part
          images_carousel(),
          //  Categories part
          new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                'Categories',
                style: TextStyle(fontSize: 18.0),
              )),
          HorizontalSlide(),
          // Recent Products part
          new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                'Recent Products',
                style: TextStyle(fontSize: 18.0),
              )),
          Container(
            height: 350.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
