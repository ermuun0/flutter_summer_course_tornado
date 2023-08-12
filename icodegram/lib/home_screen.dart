import 'package:flutter/material.dart';
import 'package:icodegram/widgets/add.dart';
import 'package:icodegram/widgets/story.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('iCodegram',
              style: TextStyle(
                fontFamily: 'Lobster',
                fontWeight: FontWeight.w400,
                fontSize: 26,
                color: Colors.white,
              ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddButton(),
Story('Төгөлдөр'),
                Story('Сарнай'),
                Story('Ханхүү')
              ],
            )
          ],
        ),
      ),
    );
  }
}