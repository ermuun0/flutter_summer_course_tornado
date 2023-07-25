import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFBF5F2),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('back1.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(padding: EdgeInsets.only(top: 200)),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        GradientLetter('W'),
                        GradientLetter('O'),
                        GradientLetter('R'),
                        GradientLetter('D'),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    GradientText('game', 31.6)
                  ],
                ),
              ),
              Expanded(
                child: GradientText('READY?', 25.0),
              )
            ],
          ),
        ),
        floatingActionButton: Container(
          width: 310,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                )),
            child: Text(
              'PLAY',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
