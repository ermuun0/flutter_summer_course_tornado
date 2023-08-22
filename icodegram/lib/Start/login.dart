import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:icodegram/layout/screen_layout.dart';
import 'package:icodegram/screen/home_screen.dart';
import 'package:icodegram/input_field_1.dart';
import 'package:icodegram/resources/auth_methods.dart';
import 'package:icodegram/Start/sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isFilled = false;
  Color styleColor = Colors.grey;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool _isLoading = false;

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String result = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);

    if (result == 'success') {
      print('Logged In');
      setState(() {
        _isLoading = false;
      });
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ScreenLayout()));
    } else {
      print('Not logged in');
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController.addListener(() {
      setState(() {
        isFilled = _emailController.text.isNotEmpty &&
            _passwordController.text.isNotEmpty ;
        styleColor = isFilled ? Colors.white : Colors.grey;
      });
    });
    _passwordController.addListener(() {
      setState(() {
        isFilled = _emailController.text.isNotEmpty &&
            _passwordController.text.isNotEmpty ;
        styleColor = isFilled ? Colors.white : Colors.grey;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Color(0x121212),
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
            Expanded(
              child: InputField1(
                text: 'И-Мэйл',
                editingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              flex: 0,
            ),
            Padding(padding: EdgeInsets.only(top: 14)),
            Expanded(
              child: InputField1(
                text: 'Password',
                obscureText: true,
                editingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              flex: 0,
            ),
            Padding(padding: EdgeInsets.only(top: 48)),
            InkWell(
              onTap: loginUser,
              child: Container(
                width: 343,
                height: 45,
                decoration: isFilled
                ? BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                      colors: [Color(0xffE86B02), Color(0xffFA9541)]),
                ): BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
              color: Colors.transparent.withAlpha(130),
              gradient: const LinearGradient(
                colors: [Color(0xffE86B02), Color(0xffFA9541)],
              ),
            ),
                child: Center(
                  child: Text(
                    "Нэвтрэх",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: styleColor),
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
                  "Шинэ хэрэглэгч үү?",
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
                    Navigator.push((context),
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Бүртгүүлэх",
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
