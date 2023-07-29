import 'package:flutter/material.dart';
import 'package:wordfind_app/Game.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/welcome_dart.dart';


class StartPage extends StatelessWidget {

  const StartPage(  {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Container(
        child: Column(
          children: [
            IconButton(
              icon: Image.asset('assets/arrow_back.png'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFFBF5F2),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/back2.png'),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientLetter('W', 30, 30, 16, 13 / 9, 8, 4),
                    GradientLetter('O', 30, 30, 16, 13 / 9, 8, 4),
                    GradientLetter('R', 30, 30, 16, 13 / 9, 8, 4),
                    GradientLetter('D', 30, 30, 16, 13 / 9, 8, 4),
                  ],
                ),
                GradientText('game', 18.3),
                Padding(padding: EdgeInsets.only(top: 90)),
                Image.asset('assets/iCodeGuyHead.png'),
                Padding(padding: EdgeInsets.only(top: 29.7)),
                GradientText('Player name', 22.0),
                Container(
                  width:310,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: InputBorder.none,
                        labelText: 'Type here',

                      labelStyle: TextStyle(
                        fontWeight:FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'Nunito',
                        color: Color(0xFFFA9541)
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE86B02),
            Color(0xFFFA9541)
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
borderRadius: BorderRadius.circular(25),

      ),
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Game()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )
        ),
        child: Text(
          'Start',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 24,
            fontWeight: FontWeight.w700
          ),
        ),

      ),
    );
  }
}
