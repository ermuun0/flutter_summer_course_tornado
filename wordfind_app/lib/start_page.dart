import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wordfind_app/Task_Page.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';
import 'package:wordfind_app/welcome_dart.dart';
import 'user.dart';
User guest = User('Guest', 0);
class StartPage extends StatefulWidget {

  StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientLetter('W', 30, 30, 16, 13 / 9, 8, 4),
                    GradientLetter('O', 30, 30, 16, 13 / 9, 8, 4),
                    GradientLetter('R', 30, 30, 16, 13 / 9, 8, 4),
                    GradientLetter('D', 30, 30, 16, 13 / 9, 8, 4),
                  ],
                ),
                const GradientText('game', 18.3),
                const Padding(padding: EdgeInsets.only(top: 90)),
                Image.asset('assets/iCodeGuyHead.png'),
                const Padding(padding: EdgeInsets.only(top: 29.7)),
                const GradientText('Player name', 22.0),
                InputField(
                  onSubmitted: _createUser,
                ),
                StartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _createUser(String userName) {
    setState(() {
      guest.userName = userName;
    });

      print(guest.userName);
      print(guest.score);

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
          colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        onPressed: () {
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
            )),
        child: Text(
          'Start',
          style: TextStyle(
              fontFamily: 'Nunito', fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}