import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     body:  SafeArea(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'iCodegram',
              style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
              ),
            ),
          ],
         ),
      ),

   );
  }
}
