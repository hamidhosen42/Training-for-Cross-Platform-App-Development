import 'dart:html';

import 'package:flutter/material.dart';

class Page_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius:80,
          backgroundImage: AssetImage("Image/img1.jpg"),
          child: Text("This is Long page",style: TextStyle(color: Colors.orange),)),
      ),
    );
  }
}
