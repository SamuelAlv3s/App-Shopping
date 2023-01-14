import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/product-card.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrolldirection;
  const ProductList({super.key, required this.scrolldirection});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: scrolldirection,
      children: <Widget>[
        ProductCard(
          image: 'assets/product-10.png',
          title: 'Nike Dry-Fit Long Sleeve',
          brand: 'Nike',
          price: 150,
        ),
        ProductCard(
          image: 'assets/product-1.png',
          title: 'BeoPlay Speaker',
          brand: 'Bang and Olufen',
          price: 755,
        ),
        ProductCard(
          image: 'assets/product-2.png',
          title: 'Leather Wristwatch',
          brand: 'Tag Weuer',
          price: 450,
        ),
        ProductCard(
          image: 'assets/product-3.png',
          title: 'Smart Bluetooth  Speaker',
          brand: 'Google Inc',
          price: 900,
        ),
        ProductCard(
          image: 'assets/product-4.png',
          title: 'Product 4',
          brand: 'World',
          price: 400,
        ),
        ProductCard(
          image: 'assets/product-5.png',
          title: 'Product 5',
          brand: 'World',
          price: 500,
        ),
        ProductCard(
          image: 'assets/product-6.png',
          title: 'Product 6',
          brand: 'World',
          price: 600,
        ),
        ProductCard(
          image: 'assets/product-7.png',
          title: 'Product 7',
          brand: 'World',
          price: 700,
        ),
        ProductCard(
          image: 'assets/product-8.png',
          title: 'Product 8',
          brand: 'World',
          price: 800,
        ),
        ProductCard(
          image: 'assets/product-9.png',
          title: 'Product 9',
          brand: 'World',
          price: 900,
        ),
      ],
    );
  }
}
