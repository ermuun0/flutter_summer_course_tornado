import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icodegram/add_photo.dart';
import 'package:icodegram/home_screen.dart';
import 'package:icodegram/login.dart';
import 'package:icodegram/sign_up.dart';
import 'package:icodegram/widgets/add.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.black
    ),
    home: AddPhoto(),
  ));
}

