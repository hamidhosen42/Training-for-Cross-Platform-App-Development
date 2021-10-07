import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demno",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
     home: Home(),
    );
  }
}