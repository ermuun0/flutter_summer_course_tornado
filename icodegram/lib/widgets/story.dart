import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String name;
  const Story(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Image.asset('assets/inner_oval.png'),
          Text(
            name,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
