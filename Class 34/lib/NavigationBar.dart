// ignore: file_names
import 'dart:math';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(microseconds: 100),
        color:Colors.lightBlue,
        items: [
          const Icon(Icons.ac_unit),
          const Icon(Icons.ac_unit),
          const Icon(Icons.ac_unit),
          const Icon(Icons.ac_unit),
        ],
      ),
    );
  }
}