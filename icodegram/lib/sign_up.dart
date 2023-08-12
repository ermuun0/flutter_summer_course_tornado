import 'package:flutter/material.dart';
import 'package:icodegram/input_field_1.dart';
import 'package:icodegram/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'iCodegram',
              style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Padding(padding: EdgeInsets.only(top: 52)),
            InputField1(
              text: 'Утасны дугаар',
              hintText: 'hi',
            ),
            Padding(padding: EdgeInsets.only(top: 14)),
            InputField1(
              text: 'Хэрэглэгчийн нэр',
              hintText: 'hi',
            ),
            Padding(padding: EdgeInsets.only(top: 14)),
            InputField1(
              text: 'Нууц үг',
              hintText: 'hi',
              obscureText: true,
            ),
            Padding(padding: EdgeInsets.only(top: 14)),
            InputField1(
              text: 'Нууц үг давтах',
              hintText: 'hir',
              obscureText: true,
            ),
            Padding(padding: EdgeInsets.only(top: 48)),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 343,
                height: 45,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffE86B02), Color(0xffFA9541)]),
                ),
                child: Center(
                  child: Text(
                    "Бүртгүүлэх",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 26)),
            Text(
              "Эсвэл",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA0A0A0)),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  "Бүртгэлтэй юу?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A0A0),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    print('aa');
                  },
                  child: Text(
                    "Нэвтрэх",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        foreground: Paint()
                          ..shader = LinearGradient(colors: [
                            Color(0xffE86B02),
                            Color(0xffFA9541)
                          ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0))),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}