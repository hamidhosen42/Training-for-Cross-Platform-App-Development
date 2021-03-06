import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/loginPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:passwordfield/passwordfield.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController passcont = TextEditingController();

  var clr = Colors.blue;
  var clr1;
  var istrue = false;

  // onpress() {
  //   var s = textEditingController.text;

  //   setState(() {
  //     if (s == 'red') {
  //       clr = Colors.red;
  //     } else if (s == 'green') {
  //       clr = Colors.green;
  //     }
  //   });
  //   var p = passcont.text;
  //   if (s == "admin" && p == "12345") {
  //     Navigator.push(context, MaterialPageRoute(
  //       builder: (context) {
  //         return LoginPage();
  //       },
  //     ));
  //   } else {
  //     // setState(() {
  //     //   if (istrue == false) {
  //     //     clr = Colors.green;
  //     //     istrue = true;
  //     //   } else {
  //     //     clr = Colors.blue;
  //     //     istrue = false;
  //     //   }
  //     // });
  //     var snackber = SnackBar(
  //       content: Text("No Match"),
  //       backgroundColor: Colors.yellow,
  //     );
  //     ScaffoldMessenger.of(context).showSnackBar(snackber);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr,
      appBar: AppBar(
        backgroundColor: clr,
        elevation: 0,
        title: Text("Complex Login"),
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (istrue == false) {
                  clr = Colors.green;
                  istrue = true;
                } else {
                  clr = Colors.blue;
                  istrue = false;
                }
              });
            },
            icon: Icon(FontAwesomeIcons.moon),
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                controller: textEditingController,
                keyboardType: TextInputType.emailAddress,
                // inputFormatters: [
                //   FilteringTextInputFormatter.allow(RegExp('[0-9.,+]+')),
                //   FilteringTextInputFormatter.deny(RegExp('[0-9.,+]+')),
                // ],
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    CommunityMaterialIcons.gmail,
                    color: Colors.white,
                  ),
                  // suffixIcon: Icon(
                  //   CommunityMaterialIcons.gmail,
                  //   color: Colors.black38,
                  // ),
                  labelText: "Email", hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your email',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                    // gapPadding: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: PasswordField(
                color: Colors.white,
                controller: passcont,
                hintText: 'must have special characters',
                // passwordConstraint: r'.*[@$#.*].*',
                // errorMessage:
                //     'must contain special character either . * @ # \$',
                errorMessage: '''
- A uppercase letter
- A lowercase letter
- A digit
- A special character
- A minimum length of 8 characters
 ''',
                inputDecoration: PasswordDecoration(),
                border: PasswordBorder(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    gapPadding: 10,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                    // gapPadding: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    FontAwesomeIcons.laugh,
                    color: Colors.white,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.sortDown,
                      color: Colors.white,
                    ),
                  ),
                  hintText: 'Response',
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                    // gapPadding: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36),
                    side: BorderSide(color: Colors.white)),
                onPressed: (){
                  var t=textEditingController.text.toString();
                  int c=int.parse(t);
                  setState(() {
                    clr1=Color(c);
                  });
                },
                // {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return LoginPage();
                //     },
                //   ),
                // );
                // },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}