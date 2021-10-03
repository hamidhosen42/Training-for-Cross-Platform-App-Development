import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/page2.dart';
import 'package:flutter_application_2/page3.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: Text("Hamid"),
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(builder: (context)=>PageHome()));
        },
        onLongPress: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>Page_3()));
        },
      ),
    ));
  }
}
