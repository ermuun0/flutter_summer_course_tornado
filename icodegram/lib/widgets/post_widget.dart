import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String profileImage;
  final String image;
  final String name;
  const Post(
      {super.key,
      required this.image,
      required this.name,
      required this.profileImage});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Image.asset(
              '${widget.profileImage}',
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '${widget.name}',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
height: 290,
          child: Image.asset(
            '${widget.image}',
            // width: 375,
            // height: 375,
          ),
        ),
        SizedBox(height: 12,),
        Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            Text(
              '12',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            )
          ],
        ),
        SizedBox(height: 5,),
        Row(
          children: [Text(
              "joshua_l",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white
              )
          ),
            SizedBox(width: 10,),
            Text(
                "Have a nice day",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                )
            )

          ],
        )
      ],
    );
  }
}
