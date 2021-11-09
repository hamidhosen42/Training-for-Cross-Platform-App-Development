import 'package:flutter/material.dart';

class Showclass extends StatelessWidget {
  var clr;
  Showclass(this.clr);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr,
      appBar: AppBar(),
      body:Container(),
      
    );
  }
}