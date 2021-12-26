// ignore_for_file: unused_local_variable, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, unused_element, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, unused_label, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  var ls = [
    {
      "name": "Rakib",
      "age": "23",
      "gender": "male",
      "Adress": ["address 1", "Adress 2"]
    }
  ];

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirebaseDemo(),
  ));
}

class FirebaseDemo extends StatefulWidget {
  FirebaseDemo({Key? key}) : super(key: key);

  @override
  _FirebaseDemoState createState() => _FirebaseDemoState();
}

class _FirebaseDemoState extends State<FirebaseDemo> {
  // FirebaseFirestore firestore = FirebaseFirestore.instance;

//  CollectionReference user= FirebaseFirestore.instance.collection('user');

  CollectionReference users = FirebaseFirestore.instance.collection('users2');

  // Stream<QuerySnapshot> _stream =
  //     FirebaseFirestore.instance.collection('users2').snapshots();

  // Stream<QuerySnapshot> _stream =
  //     FirebaseFirestore.instance.collection("users2").snapshots();

  Stream<QuerySnapshot> stream =
      FirebaseFirestore.instance.collection('users2').snapshots();

  String name = "";
  String age = "";
  String gender = "";
  String address = "";

  // _adduser() {
  //   name = userName.text;
  //   age = userage.text;
  //   gender = usergender.text;
  //   print("object");
  //   return users.add(
  //     {"name": name, "age": age, "gender": gender},
  //   );
  // }

  // _adduser() {
  //   name = userName.text;
  //   age = userage.text;
  //   address = useraddress.text;
  //   gender = usergender.text;
  //   print(name);
  //   return users.add(
  //     {"Name": "name", "age": "age", "address": "address", "gender": "gender"},
  //   );
  // }

  _adddata() {
    users.add({
      "Gender": usergender.text,
      "Name": userName.text,
      "Age": userage.text,
      "Address": useraddress.text,
    });
  }

  var iddoc;
  var editId;
  var del;

  TextEditingController userName = TextEditingController();
  TextEditingController userage = TextEditingController();
  TextEditingController useraddress = TextEditingController();
  TextEditingController usergender = TextEditingController();
  TextEditingController update = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(labelText: "User Name"),
                    controller: userName),
                TextField(
                    decoration: InputDecoration(labelText: "User age"),
                    controller: userage),
                TextField(
                    decoration: InputDecoration(labelText: "User Address"),
                    controller: useraddress),
                TextField(
                    decoration: InputDecoration(labelText: "User Gender"),
                    controller: usergender),
                // TextField(
                //     decoration: InputDecoration(labelText: "Update"),
                //     controller: update),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: _adddata, child: Text("Click")),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          users.doc(editId).update({
                            
                            "Gender": usergender.text,
                            "Name": userName.text,
                            "Age": userage.text,
                            "Address": useraddress.text,
                          });
                        },
                        // onPressed: () {
                        //   users.doc("0HKBguF1kjlJefR2rXB6").set({
                        //     "Name": "sdjks",
                        //     "Age":"32",
                        //     "Address":address,
                        //   });
                        // },
                        child: Text("Update")),
                  ],
                ),
                StreamBuilder(
                    stream: stream,
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return Text("Not found");
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator();
                      }

                      return Container(
                        height: 500,
                        width: double.maxFinite,
                        child: ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              snapshot.data!.docs.forEach((element) {
                                iddoc = element.id;
                              });
                              return Card(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                editId=snapshot.data!.docs[index].id;
                                              });
                                              userName.text = snapshot
                                                  .data!.docs[index]["Name"];
                                              userage.text = snapshot
                                                  .data!.docs[index]["Age"];
                                              useraddress.text = snapshot
                                                  .data!.docs[index]["Address"];
                                              usergender.text = snapshot
                                                  .data!.docs[index]["Gender"];
                                            },
                                            child: Text("Edit")),
                                        ElevatedButton(
                                            onPressed: () {
                                               setState(() {
                                                del=snapshot.data!.docs[index].id;
                                              });
                                              users.doc(del).delete().then(
                                                  (value) =>
                                                      Text("successfull")).onError((error, stackTrace) => Text('$error'));
                                            },
                                            child: Text("Clear")),
                                      ],
                                    ),
                                    Text(
                                        "${snapshot.data!.docs[index]["Name"]}"),
                                    Text(
                                        "${snapshot.data!.docs[index]["Age"]}"),
                                    Text(
                                        "${snapshot.data!.docs[index]["Address"]}"),
                                    Text(
                                        "${snapshot.data!.docs[index]["Gender"]}")
                                  ],
                                ),
                              );
                            }),
                      );
                    })
              ],
            ),
          ),
        ));
  }
}

class MyApp extends StatefulWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Stream<QuerySnapshot> _stream =
      FirebaseFirestore.instance.collection('users').snapshots();

  String name = "";

  String age = "";
  String gender = "";
  _adduser() {
    return users.add(
      {"name": name, "age": age, "gender": gender},
    );
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final p = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  int i = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.blue,
            // fixedColor: Colors.black,
            onTap: (t) {
              setState(() {
                i = t;
              });
            },
            currentIndex: i,
            selectedItemColor: Colors.amber[800],
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "a"),
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "a"),
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "a"),
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "a")
            ]),
        appBar: AppBar(),
        body: p.elementAt(i)
        //  LiquidSwipe(pages: p)
        //  Center(
        //   child: Container(
        //     child: ElevatedButton(
        //         onPressed: () {
        //           showBottomSheet(
        //               context: context,
        //               builder: (context) => Container(
        //                     child: Column(
        //                       children: [
        //                         ListTile(
        //                           title: Text("heel"),
        //                           trailing: Text("data"),
        //                         )
        //                       ],
        //                     ),
        //                   ));

        //           Fluttertoast.showToast(
        //               msg: "This is Center Short Toast",
        //               toastLength: Toast.LENGTH_LONG,
        //               gravity: ToastGravity.CENTER,
        //               timeInSecForIosWeb: 2,
        //               backgroundColor: Colors.red,
        //               textColor: Colors.white,
        //               fontSize: 16.0);
        //           print("object");
        //         },
        //         child: Text("fsf")),
        //   ),
        // ),
        );
  }
}