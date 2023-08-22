import 'package:flutter/material.dart';
import 'package:icodegram/screen/home_screen.dart';

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
        leading: IconButton(
          icon: Image.asset('assets/back.png'),
          onPressed: () {},
        ),

        title:  Padding(
          padding: const EdgeInsets.only(left: 87),
          child: Text("Зураг оруулах",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,


      )),
        )),
      body: Container(
        child: Column(
          children: [

    ]

        ),
      ),
    );
  }
}
