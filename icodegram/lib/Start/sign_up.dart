import 'package:flutter/material.dart';
import 'package:icodegram/Start/login.dart';
import 'package:icodegram/layout/screen_layout.dart';
import 'package:icodegram/screen/home_screen.dart';
import 'package:icodegram/input_field_1.dart';
import 'package:icodegram/resources/auth_methods.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isFilled = false;
  Color styleColor = Colors.grey;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _validatePasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();

    _emailController.addListener(() {
      setState(() {
        isFilled = _emailController.text.isNotEmpty &&
            _passwordController.text.isNotEmpty &&
            _usernameController.text.isNotEmpty;
        styleColor = isFilled ? Colors.white : Colors.grey;
      });
    });
    _passwordController.addListener(() {
      setState(() {
        isFilled = _emailController.text.isNotEmpty &&
            _passwordController.text.isNotEmpty &&
            _usernameController.text.isNotEmpty;
        styleColor = isFilled ? Colors.white : Colors.grey;
      });
    });
    _usernameController.addListener(() {
      setState(() {
        isFilled = _emailController.text.isNotEmpty &&
            _passwordController.text.isNotEmpty &&
            _usernameController.text.isNotEmpty;
        styleColor = isFilled ? Colors.white : Colors.grey;
      });
    });
  }

  void submitData() async {
    String result= await AuthMethods().signUpUser(
        email: _emailController.text,
        password: _passwordController.text,
        username: _usernameController.text);
    if (result == 'success'){
      Navigator.push(context,MaterialPageRoute(builder: (context) => Login()));
    }else {
      print('not success');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'iCodegram',
              style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const Padding(padding: EdgeInsets.only(top: 52)),
            InputField1(
              text: 'Хэрэглэгчийн И-мэйл',
              editingController: _emailController,
              textInputType: TextInputType.emailAddress,
            ),
            const Padding(padding: EdgeInsets.only(top: 14)),
            InputField1(
              text: 'Хэрэглэгчийн нэр',
              editingController: _usernameController,
              textInputType: TextInputType.text,
            ),
            const Padding(padding: EdgeInsets.only(top: 14)),
            InputField1(
              text: 'Нууц үг',
              obscureText: true,
              editingController: _passwordController,
              textInputType: TextInputType.text,
            ),
            const Padding(padding: EdgeInsets.only(top: 14)),
            InputField1(
              text: 'Нууц үг давтах',
              obscureText: true,
              editingController: _validatePasswordController,
              textInputType: TextInputType.text,
            ),
            const Padding(padding: EdgeInsets.only(top: 48)),
            InkWell(
              onTap: isFilled ? submitData : null,
              child: Container(
                width: 343,
                height: 45,
                decoration: isFilled
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        gradient: const LinearGradient(
                          colors: [Color(0xffE86B02), Color(0xffFA9541)],
                        ),
                      )
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.transparent.withAlpha(130),
                        gradient: const LinearGradient(
                          colors: [Color(0xffE86B02), Color(0xffFA9541)],
                        ),
                      ),
                child: Center(
                    child: Text("Бүртгүүлэх",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: styleColor))),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 26)),
            const Text(
              "Эсвэл",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA0A0A0)),
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Бүртгэлтэй юу?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A0A0),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Нэвтрэх",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        foreground: Paint()
                          ..shader = const LinearGradient(colors: [
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
