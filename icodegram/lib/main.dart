import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icodegram/screen/add_photo.dart';
import 'package:icodegram/screen/home_screen.dart';
import 'package:icodegram/layout/screen_layout.dart';
import 'package:icodegram/Start/login.dart';
import 'package:icodegram/Start/sign_up.dart';
import 'package:icodegram/widgets/add.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.black
    ),
    home: ScreenLayout(),
  ));
}

