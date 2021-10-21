import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: true,
                enabled: true,
                // showCursor: false,
                cursorHeight: 20,
                cursorWidth: 3,
                cursorColor: Colors.purpleAccent,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                // cursorRadiu,
                decoration: InputDecoration(
                  //fillColor: Colors.purpleAccent,
                  //border: UnderlineInputBorder(),
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: PasswordField(
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
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.blue.shade100,
                  //   ),
                  //   borderRadius: BorderRadius.circular(12),
                  // ),
                  // focusedErrorBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(12),
                  //   borderSide: BorderSide(width: 2, color: Colors.red.shade200),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}