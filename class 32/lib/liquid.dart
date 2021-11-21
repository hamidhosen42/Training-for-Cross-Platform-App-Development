import 'package:flutter/material.dart';
import 'package:flutter_application_2/homePage.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Liquid extends StatelessWidget {

  var pages=[
    Container(
      color: Colors.purple,
    ),
    HomePage(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.redAccent,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(pages: pages);
  }
}