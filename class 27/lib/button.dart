import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  var onprs;
  var text;
  MyButton(this.onprs, this.text);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onprs,
      child: Text(text),
    );
  }
}