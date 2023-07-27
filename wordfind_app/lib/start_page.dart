import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/welcome_dart.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomePage()));
              },
            ),
          )
        ],
      ),
      // floatingActionButton: Container(
      //   child: Row(
      //     children: [
      //       Container(
      //         color: Color(0xffff9002),
      //
      //         width: 32,
      //         height: 32,
      //         child: Image.asset('assets/arrow_back.png'),
      //
      //
      //
      //       ),
      //       Padding(padding: EdgeInsets.only(left: 80)),
      //
      //       Row(
      //         children: [
      //           GradientLetter('W', 30, 30, 16, 13/9),
      //           GradientLetter('O', 30, 30, 16, 13/9),
      //           GradientLetter('R', 30, 30, 16,  13/9),
      //           GradientLetter('D', 30, 30, 16, 13/9),
      //         ],
      //       ),
      //     ],
      //   ),
      //
      // ),

      backgroundColor: Color(0xFFFBF5F2),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/back2.png'),
            fit: BoxFit.cover,
          )),

        ),
      ),
    );
  }
}
