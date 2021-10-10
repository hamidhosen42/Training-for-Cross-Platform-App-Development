import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/hamid.dart';

class PaggeTwo extends StatelessWidget {

  var img = ["Image/img1.png", "Image/pic1.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),


     
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context,index)=>
        Card(
          elevation: 10,
          child: ListTile(
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (_)=>Hamid()));
            },
            title: Text("Hamid Hosen"),
              subtitle: Text("EDU"),
              trailing: Icon(Icons.forward),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("Image/img4.jpg"),
              ),
          ),
          shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),

      // // body: ListView(
      // //   children: [
      // //     ListTile(
      // //       title: Text("Hamid Hosen"),
      // //       subtitle: Text("EDU"),
      // //       trailing: Icon(Icons.forward),
      // //       leading: CircleAvatar(
      // //         radius: 30,
      // //         backgroundColor: Colors.red,
      // //         backgroundImage: AssetImage("Image/img4.jpg"),
      // //       ),
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.blue,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.orange,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.blue,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.pinkAccent,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.black,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.green,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.brown,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.purple,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.blue,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.green,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.deepOrange,
      // //     ),
      // //     Container(
      // //       height: 100,
      // //       color: Colors.red,
      // //     ),
      // //   ],
      // // ),

      // Column(
      //   children: [
      //     SizedBox(
      //       height: 50,
      //     ),
      //     Card(
      //       elevation: 15,
      //       child: ListTile(
      //         onTap: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => Hamid(),
      //                   ),
      //                 );
      //               },
      //         hoverColor: Colors.red,
      //         onLongPress: () {},
      //         enabled: true,
      //         //selected: true,
      //         tileColor: Colors.lightGreen,
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.red,
      //           backgroundImage: AssetImage("Image/img4.jpg"),
      //         ),
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         trailing: Icon(Icons.forward),
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.all(Radius.circular(20))),
      //       ),

      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.all(Radius.circular(20))),
      //     ),
      //     Card(
      //       elevation: 15,
      //       child: ListTile(
      //         hoverColor: Colors.red,
      //         onLongPress: () {},
      //         enabled: true,
      //         //selected: true,
      //         tileColor: Colors.lightGreen,
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.red,
      //           backgroundImage: AssetImage("Image/img4.jpg"),
      //         ),
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         trailing: Icon(Icons.forward),
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.all(Radius.circular(20))),
      //       ),
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.all(Radius.circular(20))),
      //     ),
      //     Card(
      //       elevation: 15,
      //       child: ListTile(
      //         hoverColor: Colors.red,
      //         onLongPress: () {},
      //         enabled: true,
      //         //selected: true,
      //         tileColor: Colors.lightGreen,
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.red,
      //           backgroundImage: AssetImage("Image/img4.jpg"),
      //         ),
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         trailing: Icon(Icons.forward),
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.all(Radius.circular(20))),
      //       ),
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.all(Radius.circular(20))),
      //     ),
      //     Card(
      //       elevation: 15,
      //       child: ListTile(
      //         hoverColor: Colors.red,
      //         onLongPress: () {},
      //         enabled: true,
      //         //selected: true,
      //         tileColor: Colors.lightGreen,
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.red,
      //           backgroundImage: AssetImage("Image/img4.jpg"),
      //         ),
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         trailing: Icon(Icons.forward),
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.all(Radius.circular(20))),
      //       ),
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.all(Radius.circular(20))),
      //     ),
      //   ],
      // ),

      // body: GridView.count(
      //   crossAxisCount: 4,
      //   children: [

      //   ],
      // ),
    );
  }
}
