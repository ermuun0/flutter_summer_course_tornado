import 'package:flutter/material.dart';

class InputField1 extends StatefulWidget {
  final String text;
  final String hintText;
  final bool obscureText;
  const InputField1( {super.key, required this.text, this.obscureText = false, required this.hintText});

  @override
  State<InputField1> createState() => _InputField1State();
}

class _InputField1State extends State<InputField1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      child: TextField(

        obscureText: widget.obscureText,
        // controller: c
        maxLines: 1,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Color(0xFFA0A0A0)),
          hintText: widget.hintText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: widget.text,
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
