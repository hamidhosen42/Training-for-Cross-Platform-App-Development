// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';


class SignPage extends StatefulWidget {

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff3d4343),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "iCircles",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    // ignore: prefer_const_literals_to_create_immutables
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(5.0, 5.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(5.0, 5.0),
                        blurRadius: 8.0,
                        color: Color.fromARGB(125, 0, 0, 255),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 2,
                  height: 3,
                  color: Colors.yellow,
                  indent: 20,
                  endIndent: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Create your account",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.yellow,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black26,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.yellow,
                      ),
                      hintStyle: const TextStyle(color: Colors.white38),
                      hintText: 'First Name',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(width: 0, color: Color(0xff3d4343)),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 0, color: Color(0xff3d4343)),
                        // gapPadding: 10,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black26,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.yellow,
                      ),
                      hintStyle: const TextStyle(color: Colors.white38),
                      hintText: 'Last Name',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(width: 0, color: Color(0xff3d4343)),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 0, color: Color(0xff3d4343)),
                        // gapPadding: 10,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black26,
                      prefixIcon: Icon(
                        CommunityMaterialIcons.emoticon_angry,
                        color: Colors.yellow,
                      ),
                      hintStyle: const TextStyle(color: Colors.white38),
                      hintText: 'Username',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(width: 0, color: Color(0xff3d4343)),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 0, color: Color(0xff3d4343)),
                        // gapPadding: 10,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return ForgotPassword();
                          //     },
                          //   ),
                          // );
                        },
                        child: Text(
                          "already in use",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.yellow[400],
                          ),
                        ),
                      ),
                    ),
                    // Spacer(),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black26,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.yellow,
                      ),
                      hintStyle: const TextStyle(color: Colors.white38),
                      hintText: 'Email',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(width: 0, color: Color(0xff3d4343)),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 0, color: Color(0xff3d4343)),
                        // gapPadding: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black26,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.yellow,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.yellow,
                      ),
                      hintStyle: const TextStyle(color: Colors.white38),
                      hintText: 'Password',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(width: 0, color: Color(0xff3d4343)),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 0, color: Color(0xff3d4343)),
                        // gapPadding: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black26,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.yellow,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.yellow,
                      ),
                      hintStyle: const TextStyle(color: Colors.white38),
                      hintText: 'Confirm Password',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(width: 0, color: Color(0xff3d4343)),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 0, color: Color(0xff3d4343)),
                        // gapPadding: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    color: Colors.yellowAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return Login_success();
                      //     },
                      //   ),
                      // );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      alignment: Alignment.center,
                      width: 70,
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "----------------------  Or sign in with ---------------------",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white38,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(CommunityMaterialIcons.google),
                      onPressed: () {},
                      color: Colors.yellow,
                      iconSize: 30,
                    ),
                    IconButton(
                      icon: Icon(CommunityMaterialIcons.facebook),
                      color: Colors.yellow,
                      iconSize: 30,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(CommunityMaterialIcons.twitter),
                      color: Colors.yellow,
                      iconSize: 30,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}