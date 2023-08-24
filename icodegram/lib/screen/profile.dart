import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:icodegram/widgets/add.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Text(
                  'iCodegram',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
            Row(
              children: [
                AddButton(
                  some: '',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("",
                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),),
                    SizedBox(height: 12,),
                    Row(
                      children: [Text(
                          "0",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          )
                      ),
                        SizedBox(width: 3,),
                        Text(
                            "Дагагчтай",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        Text(
                            "0",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            )
                        ),
                       SizedBox(width:3,),
                        Text(
                            "Пост нийтэлсэн",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            )
                        )

                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 17,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: 343,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 2, color: Color(0xFF262626))
                  ),
                  child: Center(
                    child: Text(
                      "Профайл Засах",
                      style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                        color: Colors.white
                    )
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32,),
            Container(
              width: 410,
              height: 35,
              decoration: BoxDecoration(

                  border: Border(top: BorderSide(color: Color(0xFF262626)),
                    bottom: BorderSide(color: Color(0xFF262626)),)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/shape.png'),
                  SizedBox(width: 10,),
                  Text("Постууд",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
