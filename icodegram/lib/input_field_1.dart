import 'package:flutter/material.dart';

class InputField1 extends StatefulWidget {
  const InputField1({super.key});

  @override
  State<InputField1> createState() => _InputField1State();
}

class _InputField1State extends State<InputField1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      child: TextField(
        maxLines: 1,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          labelText: "Нэвтрэх нэр",
         labelStyle: TextStyle(
           color: Color(0xFFA0A0A0)
         ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(
              width: 1,
              color: Color(0xFFA0A0A0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(width: 1, color: Colors.white)
          ),
        ),
      ),
    );
  }
}
