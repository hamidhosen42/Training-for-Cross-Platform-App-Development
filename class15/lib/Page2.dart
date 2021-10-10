import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_2/hamid.dart';

class PaggeTwo extends StatelessWidget {
  // var ls = [
  //   Colors.green[200],
  //   Colors.green[400],
  //   Colors.green[600],
  //   Colors.blue[200],
  //   Colors.blue[400],
  //   Colors.blue[600],
  //   Colors.orange[200],
  //   Colors.orange[400],
  //   Colors.orange[600],
  // ];
  var ls = 0;

  var img = ["Image/img1.png", "Image/pic1.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),


      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 15, crossAxisSpacing: 15),
          itemCount: 100,
          itemBuilder: (context, index) {
            return Card(
              elevation: 20,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Image/img4.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(30),

                ),
                //color: ls[index],
                // color: Colors.yellow,
                // child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // FlutterLogo(
                    //   size: 100,
                    // ),
                    Text("${index}"),
                  ],
                ),
                // ),
                // child: Center(child: Image.asset(img[index]),),
              ),
            );
          }),


      // body: GridView(
      //   gridDelegate:
      //       SliverGridDelegateWithFixedCrossAxisCount(
      //         childAspectRatio: 2,
      //         mainAxisSpacing: 8,
      //         crossAxisSpacing: 8,
      //         crossAxisCount: 3),

      //   children: [
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //     Container(
      //       height: 40,
      //       width: 40,
      //       color: Colors.blue,
      //     ),
      //     Container(height: 40, width: 40, color: Colors.black),
      //   ],
      // ),
    );
  }
}
