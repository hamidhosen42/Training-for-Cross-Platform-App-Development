import 'package:flutter/material.dart';
import 'package:flutter_application_2/mycard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // centerTitle: true,
          ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    My_Card("Image/ch.png", "Wingback chair"),
                    My_Card("Image/img1.jpg", "Hamid"),
                    My_Card("Image/ch.png", "Hosen"),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    My_Card("Image/ch.png", "Wingback chair"),
                    My_Card("Image/img1.jpg", "Hamid"),
                    My_Card("Image/ch.png", "Hosen"),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    My_Card("Image/ch.png", "Wingback chair"),
                    My_Card("Image/img1.jpg", "Hamid"),
                    My_Card("Image/ch.png", "Hosen"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}