import 'package:flutter/material.dart';
import 'package:icodegram/home_screen.dart';

class AddPhoto extends StatefulWidget {
  const AddPhoto({super.key});

  @override
  State<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: Center(
          child: Text(
              "Зураг оруулах",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )
          ),
        ),
        ),
      body: Container(
        child: Column(
          children: [
            Stack(

            )
          ],
        ),
      ),
      );

  }
}
