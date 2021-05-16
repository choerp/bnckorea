import 'package:bnckorea/screens/about/about_screen.dart';
import 'package:bnckorea/screens/contact/contact_screen.dart';
import 'package:bnckorea/screens/home/home_screen.dart';
import 'package:bnckorea/screens/news/news_screen.dart';
import 'package:bnckorea/screens/product/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BnC Korea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
        '/product': (context) => ProductScreen(),
        '/news': (context) => NewsScreen(),
        '/contact': (context) => ContactScreen(),
      },
    );
  }
}