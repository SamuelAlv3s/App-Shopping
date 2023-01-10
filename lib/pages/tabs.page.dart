import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping/pages/cart.page.dart';
import 'package:shopping/pages/home.page.dart';
import 'package:shopping/pages/login.page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(children: <Widget>[HomePage(), CartPage(), LoginPage()]),
      bottomNavigationBar: TabBar(
        tabs: <Widget>[
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.shopping_cart)),
          Tab(icon: Icon(Icons.perm_identity)),
        ],
        labelColor: Colors.green,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5),
        indicatorColor: Colors.green,
      ),
    );
  }
}
