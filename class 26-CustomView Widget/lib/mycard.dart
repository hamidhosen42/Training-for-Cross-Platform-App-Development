import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class My_Card extends StatelessWidget {

  var img,ti;
  My_Card(var img,var ti){
    this.img=img;
    this.ti=ti;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 15,
        shadowColor: Colors.blue, 
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(img)),
              Text(
                ti,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Place your order today and we'll ship when its availab-\nle.",
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "₹250",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Spacer(),
                  Card(
                    color: Colors.blue,
                    elevation: 15,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        FontAwesomeIcons.bookmark,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}