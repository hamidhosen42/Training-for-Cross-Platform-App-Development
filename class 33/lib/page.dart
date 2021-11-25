import 'package:flutter/material.dart';

class Hamis extends StatelessWidget {
  var t;

  Hamis(this.t);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Text(t),
        ),
      ),
    );
  }
}