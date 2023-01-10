import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red,
            child: Text('Container 1'),
          ),
        ),
        Container(
          color: Colors.yellow,
          height: 80,
          child: Text('Container 2'),
        ),
      ],
    ));
  }
}
