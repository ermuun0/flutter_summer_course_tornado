import 'package:flutter/material.dart';
import 'package:icodegram/input_field_1.dart';
import 'package:icodegram/login.dart';
import 'package:icodegram/resources/auth_methods.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _validatePasswordController =
      TextEditingController();
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
              text: 'Хэрэглэгчийн И-мэйл',
              hintText: 'hi',
              editingController: _emailController,
              textInputType: TextInputType.emailAddress,
            ),
            Padding(padding: EdgeInsets.only(top: 14)),
            InputField1(
              text: 'Хэрэглэгчийн нэр',
              hintText: 'hi',
              editingController: _usernameController,
              textInputType: TextInputType.text,
            ),
            Padding(padding: EdgeInsets.only(top: 14)),
            InputField1(
              text: 'Нууц үг',
              hintText: 'hi',
              obscureText: true,
              editingController: _passwordController,
              textInputType: TextInputType.text,
            ),
            Padding(padding: EdgeInsets.only(top: 14)),
            InputField1(
              text: 'Нууц үг давтах',
              hintText: 'hir',
              obscureText: true,
              editingController: _validatePasswordController,
              textInputType: TextInputType.text,
            ),
            Padding(padding: EdgeInsets.only(top: 48)),
            GestureDetector(
              onTap: () => {
                AuthMethods().signUpUser(
                    email: _emailController.text,
                    password: _passwordController.text,
                    username: _usernameController.text),
                if(_emailController.text.isNotEmpty){
                   Container(
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
                }else{

                }

              },

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
