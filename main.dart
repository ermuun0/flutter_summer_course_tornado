import 'package:flutter/material.dart';
import 'package:untitled1/welcome_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Ribeye'),
    title:  'Word Find Game',
    home: Scaffold(
      body: Center(
        child: WelcomePage(),
      ),
    ),

  ));
}


