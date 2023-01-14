import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';
import 'package:shopping/widgets/category/category-item.widget.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/product/product-card.widget.dart';
import 'package:shopping/widgets/product/product-list.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Color(0xFFF5F5F5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 60),
              SearchBox(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Categories',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best Selling',
                    style: TextStyle(fontSize: 30),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('See All'),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 320,
                child: ProductList(
                  scrolldirection: Axis.horizontal,
                ),
              )
            ]),
      ),
    );
  }
}
