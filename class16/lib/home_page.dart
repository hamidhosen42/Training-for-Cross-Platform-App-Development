import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Page2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.pinkAccent,
          backgroundImage: NetworkImage("https://wallpaperaccess.com/full/1781532.jpg",),
          radius: 100,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PaggeTwo()));
              },
              style: ButtonStyle(
            
                splashFactory: InkRipple.splashFactory,

                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20),),),
                ),
                shadowColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.amber.withOpacity(.2)),
                elevation: MaterialStateProperty.all(30),
                foregroundColor: MaterialStateProperty.all(Colors.black),
              ),
              child: Text(
                "Click me!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}