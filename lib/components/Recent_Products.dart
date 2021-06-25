import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var Product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 89,
    },
    {
      "name": "Dress",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 200,
      "price": 95,
    },
    {
      "name": "Earings",
      "picture": "images/products/accessories1.jpg",
      "old_price": 50,
      "price": 35,
    },
    {
      "name": "Skirts",
      "picture": "images/products/skt1.jpeg",
      "old_price": 75,
      "price": 60,
    },
    {
      "name": "Heels",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 95,
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 110,
      "price": 95,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: Product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: Product_list[index]['name'],
            prod_picture: Product_list[index]['picture'],
            prod_oldPrice: Product_list[index]['old_price'],
            prod_Price: Product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldPrice;
  final prod_Price;

  Single_prod(
      {this.prod_name, this.prod_picture, this.prod_oldPrice, this.prod_Price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(prod_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                  title: Text("\$$prod_Price",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.red[900])),
                  subtitle: Text(
                    "\$$prod_oldPrice",
                    style: TextStyle(
                        fontSize: 16.0,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey[900]),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
