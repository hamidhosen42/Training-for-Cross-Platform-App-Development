import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var is_active = false;
  var color = Colors.brown;
  var root = 4 / 5;
  bool ios=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: root,
              child: Container(
                child: Switch(
                  thumbColor: MaterialStateProperty.all(Colors.red),
                  activeTrackColor: Colors.green.withOpacity(0.2),

                  inactiveThumbColor: Colors.yellow,
                  inactiveTrackColor: Colors.orange,

                  value: is_active,
                  onChanged: (value) {
                    setState(() {
                      if (is_active = false) {
                        color = Colors.teal;
                      } else {
                        color = Colors.cyan;
                      }
                      if (is_active == false) {
                        root = -3.14 / 2;
                      } else {
                        root = -3.14 / 4;
                      }
                      is_active = value;
                    });
                  },

                  // activeColor: Colors.green,
                  activeColor: Colors.green,
                ),
              ),
            ),
            CupertinoSwitch(
              value: ios,
              onChanged: (s){
                setState(() {
                  ios=s; 
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}