import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Login Page"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.search),
          ),
        ],
        leading: Icon(Icons.home),
      ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 300,
                width: 300,
                child: Image.asset('Image/img6.png')
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Image.network("https://banner2.cleanpng.com/20171128/677/hamburger-png-vector-clipart-5a1d25624dcf91.7080692215118595543187.jpg"),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                //obscureText: true,
                enabled: true,
                // showCursor: false,
                cursorHeight: 20,
                cursorWidth: 3,
                cursorColor: Colors.purpleAccent,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                scrollPhysics: BouncingScrollPhysics(),
                enableInteractiveSelection: false,
                keyboardAppearance: Brightness.dark,
                maxLength: 10,
                maxLines: 2,
                textCapitalization: TextCapitalization.characters,
                autofocus: true,
                autocorrect: true,
                enableSuggestions: false,
                // cursorRadiu,
                decoration: InputDecoration(
                  suffixIcon:Card(
                    shape: RoundedRectangleBorder(
                      
                    ),
                    child: IconButton(
                      icon:Icon(Icons.houseboat,
                      size: 30,
                        color: Colors.white
                        ),
                      onPressed: (){},
                    ),
                  ),
                  // suffixIcon: Icon(
                  //   Icons.headset,
                  //   color: Colors.white,
                  // ),
                  fillColor: Colors.blue,
                  //border: UnderlineInputBorder(),
                  //contentPadding: EdgeInsets.all(20),
                  border: InputBorder.none,
                  hoverColor: Colors.red,
                  filled: true,
                  labelText: 'UserName',
                  hintText: 'Enter your Name.....',
                  // focusColor: Colors.red,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(5.0),
            //   child: TextField(
            //     //obscureText: true,
            //     enabled: true,
            //     // showCursor: false,
            //     cursorHeight: 20,
            //     cursorWidth: 3,
            //     cursorColor: Colors.purpleAccent,
            //     textAlign: TextAlign.center,
            //     textDirection: TextDirection.ltr,
            //     scrollPhysics: BouncingScrollPhysics(),
            //     enableInteractiveSelection: false,
            //     keyboardAppearance: Brightness.dark,
            //     maxLength: 10,
            //     maxLines: 2,
            //     textCapitalization: TextCapitalization.characters,
            //     autofocus: true,
            //     autocorrect: true,
            //     enableSuggestions: false,
            //     // cursorRadiu,
            //     decoration: InputDecoration(
            //       prefixIcon: Icon(
            //         Icons.houseboat,
            //         color: Colors.white,
            //       ),
            //       suffixIcon: Icon(
            //         Icons.headset,
            //         color: Colors.white,
            //       ),
            //       fillColor: Colors.green,
            //       //border: UnderlineInputBorder(),
            //       //contentPadding: EdgeInsets.all(20),
            //       border: InputBorder.none,
            //       hoverColor: Colors.red,
            //       filled: true,
            //       labelText: 'Full Name',
            //       hintText: 'Enter your Name.....',
            //       // focusColor: Colors.red,
            //       enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(15),
            //         borderSide: BorderSide(
            //           color: Colors.red,
            //           width: 1,
            //         ),
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(15),
            //         borderSide: BorderSide(
            //           color: Colors.red,
            //           width: 1,
            //         ),
            //       ),
            //       disabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: PasswordField(
                backgroundColor: Colors.blue,
                color: Colors.red,
                inputDecoration: PasswordDecoration(),
                
                border: PasswordBorder(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 4,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.shade100,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(width: 2, color: Colors.red.shade200),
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