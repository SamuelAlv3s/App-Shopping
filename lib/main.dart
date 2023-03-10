import 'package:flutter/material.dart';
import 'package:shopping/pages/cart.page.dart';
import 'package:shopping/pages/login.page.dart';
import 'package:shopping/pages/tabs.page.dart';
import 'package:shopping/themes/light.theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: lightTheme(),
        home: DefaultTabController(
          length: 3,
          child: TabsPage(),
        ));
  }
}
