// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Container(
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text(
//               "Flutter",
//               style: TextStyle(
//                 fontSize: 50,
//                 color: Colors.red,
//               ),
//             ),
//             centerTitle: true,
//             backgroundColor: Colors.yellow,
//             actions: [
//               Icon(
//                 Icons.add_a_photo,
//                 color: Colors.blue,
//                 size: 30,
//               ),
//               IconButton(
//                 onPressed: () {
//                   print("Hamid Hosen");
//                 },
//                 icon: Icon(Icons.home),
//                 iconSize: 30,
//                 color: Colors.blue,
//               )
//             ],
//             leading: Icon(
//               Icons.message,
//               color: Colors.blue,
//               size: 30,
//             ),
//           ),

//           //body: Image.network("https://cdn.pixabay.com/photo/2021/08/03/14/07/river-6519572_1280.jpg"),

//           body: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.vertical, //Axis.horizontal
//                 child: Container(
//                   child: Column(
//                     children: [
//                       Container(
//                         // height: 300,
//                         // width: 300,
//                         decoration: BoxDecoration(
//                           border: Border(
//                             left: BorderSide(color: Colors.red, width: 8),
//                             top: BorderSide(color: Colors.red, width: 8),
//                             bottom: BorderSide(color: Colors.green, width: 4),
//                           ),
//                           color: Colors.orange,
//                           //border: Border.all(width: 4, color: Colors.grey),
//                           // borderRadius: BorderRadius.all(Radius.circular(20)),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             "This is our First App",
//                             style: TextStyle(fontSize: 30),
//                           ),
//                         ),
//                       ),

//                       Container(
//                         //padding: EdgeInsets.all(30),
//                        // height: 400,
//                         width: double.infinity,
//                         child: Image.network(
//                           "https://media.istockphoto.com/photos/portrait-of-smiling-beautiful-business-asian-woman-with-pink-suit-in-picture-id1264465441",
//                         ),
//                         //color: Colors.blue,
//                       ),


//                       Container(
//                         padding: EdgeInsets.all(30),
//                         height: 400,
//                         width: 300,
//                         color: Colors.red,
//                         child: Container(
//                           padding:
//                               EdgeInsets.only(top: 30, bottom: 30, left: 30),
//                           height: 300,
//                           width: 400,
//                           color: Colors.blue,
//                           child: Container(
//                             padding: EdgeInsets.all(30),
//                             height: 400,
//                             width: 300,
//                             color: Colors.yellow,
//                             child: Container(
//                               padding: EdgeInsets.only(
//                                   top: 30, bottom: 30, left: 30),
//                               height: 400,
//                               width: 300,
//                               color: Colors.black,
//                               child: Center(
//                                   child: Text(
//                                 "Hamid Hosen",
//                                 style: TextStyle(
//                                     fontSize: 30,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.orange),
//                               )),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(30),
//                         height: 400,
//                         width: double.infinity,
//                         child: Image.network(
//                           "https://media.istockphoto.com/photos/trendy-girl-singing-favorite-song-out-loud-in-phone-as-mic-wearing-picture-id1256944025",
//                         ),
//                         color: Colors.blue,
//                       ),
//                       Container(
//                         //height: 400,
//                         //width: 400,
//                         child: Image.network(
//                           "https://scontent.fcgp3-1.fna.fbcdn.net/v/t1.6435-9/241752576_3965290450242678_8993398036516232601_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=0debeb&_nc_eui2=AeFniTVUqFlK2p5QmO5cuwB3-L1oHPVGehv4vWgc9UZ6Gyg8zUCr4MwOnI2P8ujU7ykh2tWQdZ77MeRlOq_Fq80n&_nc_ohc=kZNxW6WViZYAX8BQsDn&_nc_ht=scontent.fcgp3-1.fna&oh=a8b5ee6ce088f663b54690abc5a83126&oe=6170C419",
//                         ),
//                         //color: Colors.blue,
//                       ),
//                       Container(
//                         height: 400,
//                         width: 400,
//                         child: Image.network(
//                           "https://cdn.pixabay.com/photo/2014/05/02/21/49/laptop-336373_1280.jpg",
//                           color: Colors.blue,
//                           colorBlendMode: BlendMode.colorBurn,
//                           fit: BoxFit.fitHeight,
//                         ),
//                         color: Colors.blue,
//                       ),
//                       Container(
//                         //height: 400,
//                         //width: 400,
//                         child: Image.network(
//                           "https://cdn.pixabay.com/photo/2021/06/09/01/39/work-6322036_1280.jpg",
//                           color: Colors.blue,
//                           colorBlendMode: BlendMode.colorBurn,
//                         ),
//                         //color: Colors.blue,
//                       ),
//                       Image.asset("Image/img1.jpg"),
//                       Image.network(
//                           "https://cdn.pixabay.com/photo/2021/08/03/14/07/river-6519572_1280.jpg"),
//                       Image.network(
//                           "https://cdn.pixabay.com/photo/2021/08/19/12/53/bremen-6557996_1280.jpg"),
//                       Image.network(
//                           "https://images.unsplash.com/photo-1575089976121-8ed7b2a54265?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),

// //           ////////////////////////>>>>>>>>>>>>>>>>>>>>>>>>....................???/////////////////

// //           // body: Stack(
// //           //   children: [
// //           //     Image.network(
// //           //         "https://cdn.pixabay.com/photo/2021/08/03/14/07/river-6519572_1280.jpg"),
// //           //     Image.network(
// //           //         "https://cdn.pixabay.com/photo/2021/08/03/14/07/river-6519572_1280.jpg"),
// //           //     Image.network(
// //           //         "https://cdn.pixabay.com/photo/2021/08/19/12/53/bremen-6557996_1280.jpg"),
// //           //     Image.network(
// //           //         "https://images.unsplash.com/photo-1575089976121-8ed7b2a54265?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
// //           //     Center(
// //           //         child: Text(
// //           //       "ovy islam",
// //           //       style: TextStyle(
// //           //         fontSize: 50,
// //           //         fontWeight: FontWeight.bold,
// //           //         color: Colors.red[1000],
// //           //         letterSpacing: 12.4,
// //           //         height: 6.6,
// //           //         backgroundColor: Colors.red,
// //           //         wordSpacing: 10,
// //           //       ),
// //           //     )),
// //           //   ],
// //           // ),

// //           ////////////////////////...................................////////////////////////////////
// //           // body: Column(
// //           //   children: [
// //           //     Image.network("https://cdn.pixabay.com/photo/2021/08/03/14/07/river-6519572_1280.jpg"),
// //           //     Center(
// //           //         child: Text(
// //           //       "ovy islam",
// //           //       style: TextStyle(
// //           //         fontSize: 50,
// //           //         fontWeight: FontWeight.bold,
// //           //         color: Colors.red[1000],
// //           //         letterSpacing: 12.4,
// //           //         height: 6.6,
// //           //         backgroundColor: Colors.red,
// //           //         wordSpacing: 10,
// //           //       ),
// //           //     )),
// //           //   ],
// //           // ),
// //           // backgroundColor: Colors.green,
// //           /////////////////////////>..........>.....................................///////////////////////////////
//         ),
//       ),
//     );
//   }
// }
