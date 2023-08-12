import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
        Container(

          width: 75,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Color(0xFFA0A0A0))
          ),
          child: TextButton(
            onPressed: () {},
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.white ,
              ),
            ),
          ),
        ),
          Text(
              "Нэмэх",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white
              )
          )
        ],
      ),

    );

  }
}
