import 'package:flutter/material.dart';
import 'package:flutter_application_2/mycard.dart';

class RadioAssignment extends StatefulWidget {
  const RadioAssignment({Key? key}) : super(key: key);

  @override
  State<RadioAssignment> createState() => _RadioAssignmentState();
}

class _RadioAssignmentState extends State<RadioAssignment> {
  var radiogrp;
  var clr = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Center(
                // ignore: prefer_const_constructors
                child: Text(
                  "Choose a color....",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: radiogrp,
                      onChanged: (key) {
                        setState(() {
                          radiogrp = key;
                          clr = Colors.green;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Showclass(Colors.green)));
                        });
                      }),
                  Text("Green")
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: 2,
                      groupValue: radiogrp,
                      onChanged: (key) {
                        setState(() {
                          radiogrp = key;
                          clr = Colors.red;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Showclass(Colors.red)));
                        });
                      }),
                  Text("Red")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}