import 'package:coreflutter/Screens/bill.dart';
import 'package:coreflutter/Screens/cart_page.dart';
import 'package:coreflutter/Screens/favourite_page.dart';
import 'package:flutter/material.dart';
import 'package:coreflutter/Screens/product_detail.dart';
import 'Screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => home_page(),
        'product_detail_page': (context) => product_detail_page(),
        'cart_page': (context) => cart_page(),
        'favourite_page': (context) => favourite_page(),
        'bill_page': (context) => bill_page(),
      },
    ),
  );
}
