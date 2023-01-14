import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String brand;
  final double price;

  const ProductCard(
      {super.key,
      required this.image,
      required this.title,
      required this.brand,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(
                      image: image,
                      title: title,
                      brand: brand,
                      price: price,
                    ),
                  ));
            },
            child: Image.asset(
              image,
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60,
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            brand,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '\$ $price',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00C569),
            ),
          )
        ],
      ),
    );
  }
}
