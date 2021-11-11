import 'package:flutter/material.dart';

class My_Card extends StatelessWidget {
  var icn, onpress, img, title, subtitle, price;

  My_Card(
      this.onpress, this.icn, this.img, this.title, this.price, this.subtitle);

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
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                // "Place your order today and we'll ship when its availab-\nle.",
                subtitle,
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                // "₹250",
                price,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Spacer(),
                  IconButton(
                    onPressed: onpress,
                    icon: Icon(
                      icn,
                      color: Colors.red,
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