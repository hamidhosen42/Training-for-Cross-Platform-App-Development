import 'package:flutter/material.dart';
import 'package:flutter_application_2/My_drawer.dart';
import 'package:flutter_application_2/page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: Scaffold(

        ///////////////////Drawer/////////////////////
        drawer: NewWigth(),
        // endDrawer: NewWigth(),
        appBar: AppBar(
          iconTheme:IconThemeData(color: Colors.black),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyan, Colors.yellow, Colors.redAccent],
                // stops: [0.5, 1.0],
              ),
            ),
          ),
          title: Text('Tab Bar DaY'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            tabs: [
              Tab(
                child: Column(
                  children: [
                    Icon(FontAwesomeIcons.umbrella),
                    Text('Umbrella'),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(FontAwesomeIcons.google),
                    Text('Google'),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(FontAwesomeIcons.facebook),
                    Text('FaceBook'),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(FontAwesomeIcons.gasPump),
                    Text('gasPump'),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Hamis("I am page One"),
            // Container(
            //   color: Colors.orange,
            //   child: Center(
            //     child: Text('I am page one'),
            //   ),
            // ),
            Container(
              color: Colors.green,
              child: Center(
                child: Text('I am page two'),
              ),
            ),
            Container(
              color: Colors.greenAccent,
              child: Center(
                child: Text('I am page three'),
              ),
            ),
            Container(
              color: Colors.lightBlue,
              child: Center(
                child: Text('I am page four'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}