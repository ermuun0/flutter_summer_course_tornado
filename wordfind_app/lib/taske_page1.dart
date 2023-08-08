import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
import 'package:wordfind_app/task_page.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/welcome_dart.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFBF5F2),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Image.asset('assets/exit.png'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    Text(
                      'SRA',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFA9541)),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/trophy 1.png'),
                        Text(
                          '0',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFA9541)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 21)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 5; i++) Image.asset('assets/orange 1.png')
                ],
              ),
              Padding(padding: EdgeInsets.only(top:31)),
              Text('0/10',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFA9541)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Image.asset('assets/previous 1.png'),),
                  Image.asset('assets/Elsa.png'),
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Task()));},
                    icon:  Image.asset('assets/previous 2.png'),),

                ],
              ),
              Padding(padding: EdgeInsets.only(top: 27)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 4; i++)
                    GradientLetter('' , 60 , 60, 32, 52/38,16, 8 ),

                ],
              )

            ],
          ),
        ));
  }
}