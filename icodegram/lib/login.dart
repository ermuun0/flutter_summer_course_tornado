import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:icodegram/input_field_1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x121212),
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 160)),
            Center(
              child: Text(
                'iCodegram',
                style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 52)),

            Expanded(child: InputField1()),

          ],
        ),
      ),
    );
  }
}
