import 'package:flutter/material.dart';
import 'package:flutter_application_2/button.dart';
import 'package:flutter_application_2/mycard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var inc = FontAwesomeIcons.heart;

  var heart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // centerTitle: true,
          ),
      body: Row(
        children: [
          My_Card(
            () {
              setState(() {
                if (heart == false) {
                  inc = FontAwesomeIcons.solidHeart;
                  heart = true;
                } else {
                  inc = FontAwesomeIcons.heart;
                  heart = false;
                }
              });
            },
            inc,
            'Image/ch.png',
            "Wingback",
            "₹250",
            "Place your order today and we'll ship when its availab-\nle.",
          ),
          MyButton((){},"Click"),
        ],
      ),
    );
  }
}