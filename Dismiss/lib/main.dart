// ignore_for_file: prefer_const_constructors, avoid_print, unrelated_type_equality_checks

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List lst1 = List.generate(100, (index) => index);
  List lst = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.separated(
          itemBuilder: (context, index) => Dismissible(
            confirmDismiss: (direction){
              return showDialog(
                context: context, 
                builder: (context)=>AlertDialog(
                  title: Text("Delate"),
                  content: Text("Delate"),
                  actions: [
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).pop(true);
                      },
                      icon: Icon(Icons.delete),
                    ),
                      IconButton(
                      onPressed: (){
                        Navigator.of(context).pop(false);
                      },
                      icon: Icon(Icons.stay_current_landscape),
                    ),
                  ],
                )
              );
            },
            onDismissed: (direction){
              if(DismissDirection.endToStart==true){
                
              }else{
                
              }
              lst1.remove(index);
              print(lst1);
              print(direction);
            },
            background: Container(
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: (){},
              ),
              color: Colors.yellow,
            ),
            secondaryBackground: Container(
              child: Icon(Icons.clear),
              color: Colors.amber,
            ),
            key: ValueKey(lst1),
            child: ListTile(
              title: Text(
                "Item ${lst1[index]}",
              ),
            ),
          ),
          separatorBuilder: (contex, index) => Divider(
            thickness: 3,
            height: 2,
          ),
          itemCount: lst1.length,
        ),
      ),
    );
  }
}