import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/components/text_input_field.dart';
import 'package:lesson_20_flutter/screen/home_screen.dart';

import '../resources/auth_methods.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      print('Not logged in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Text('iCodeGram'),
              SizedBox(
                height: 64,
              ),
              TextInputField(
                  hintText: "Enter your email",
                  isPassword: false,
                  editingController: _emailController,
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 30,
              ),
              TextInputField(
                  hintText: 'Enter your password',
                  isPassword: true,
                  editingController: _passwordController,
                  textInputType: TextInputType.text),
              SizedBox(
                height: 64,
              ),
              InkWell(
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.blue,
                    ),
                    child: _isLoading
                        ? Center(
                            child:
                                CircularProgressIndicator(color: Colors.white))
                        : Text("Нэвтрэх"),
                  ),
                  onTap: loginUser),
              SizedBox(
                height: 12,
              ),
              Flexible(flex: 2, child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
