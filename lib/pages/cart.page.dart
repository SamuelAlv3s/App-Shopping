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
            child: productList(),
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

Widget productList() {
  return ListView(
    children: <Widget>[
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
    ],
  );
}

Widget productItem() {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(children: <Widget>[
      Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(10),
        child: Image.asset(
          'assets/product-1.png',
          fit: BoxFit.fitWidth,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Título do Produto'),
            Text(
              '\$ 80.00',
              style: TextStyle(color: Colors.green),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 120,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(children: <Widget>[
                Container(
                  width: 40,
                  alignment: Alignment.center,
                  child: TextButton(
                    child: Text('+'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 40,
                  alignment: Alignment.center,
                  child: TextButton(
                    child: Text('1'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 40,
                  alignment: Alignment.center,
                  child: TextButton(
                    child: Text('-'),
                    onPressed: () {},
                  ),
                ),
              ]),
            ),
          ],
        ),
      )
    ]),
  );
}
