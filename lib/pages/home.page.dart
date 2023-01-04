import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

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
              search(),
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
                child: categoryList(),
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
                child: productList(context),
              )
            ]),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 60,
    padding: EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        borderRadius: BorderRadius.all(Radius.circular(128))),
    child: Row(children: <Widget>[
      Icon(Icons.search),
      Container(
        width: 300,
        padding: EdgeInsets.only(left: 10),
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Search...',
            labelStyle: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
          ),
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      )
    ]),
  );
}

Widget categoryList() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
    ],
  );
}

Widget categoryItem() {
  return Container(
    width: 70,
    height: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 1),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: Image.asset('assets/Icon_Devices.png'),
  );
}

Widget productList(BuildContext context) {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      productItem(context),
      productItem(context),
      productItem(context),
      productItem(context),
      productItem(context),
      productItem(context),
      productItem(context),
      productItem(context),
    ],
  );
}

Widget productItem(BuildContext context) {
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
                  builder: (context) => ProductPage(),
                ));
          },
          child: Image.asset(
            'assets/product-1.png',
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
            'Nice Product',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Marca',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '\$ 200.00',
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
