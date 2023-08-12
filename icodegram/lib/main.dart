import 'package:flutter/material.dart';
import 'package:icodegram/home_screen.dart';
import 'package:icodegram/login.dart';
import 'package:icodegram/sign_up.dart';
import 'package:icodegram/widgets/add.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.black
    ),
    home: Login(),
  ));
}

