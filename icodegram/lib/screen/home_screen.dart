import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icodegram/widgets/add.dart';
import 'package:icodegram/widgets/story.dart';

import '../widgets/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget>stories = [
    AddButton( some: 'Нэмэх',),
    Story('Төгөлдөр'),
    Story('Сарнай'),
    Story('Ханхүү'),
    Story('Сарнай'),
    Story('Ханхүү'),
  ];
  List<Widget>posts = [
    Post(image: 'assets/photo.png', name: 'cvacv', profileImage: 'assets/profile_pic.png'),
    Post(image: 'assets/photo.png', name: 'cvacv', profileImage: 'assets/profile_pic.png')


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
             const  SliverAppBar(
               backgroundColor: Colors.black,
                pinned: false,
               expandedHeight: 40,

               flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(left: 10),

                  title: Text(
                    'iCodegram',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.w400,
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SliverList(delegate: SliverChildListDelegate([
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: stories.length,
                      itemBuilder: (context, index) {
                    return stories[index];
                  }),
                ),
                 ListView.separated(
                   separatorBuilder: (contex, index) {
                     return const SizedBox(
                       height: 10,
                     );
                   },
                     shrinkWrap: true,
                     physics: ScrollPhysics(),
                    itemCount: posts.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                    return posts[index];
                  }),

              ]))
            ],
          ),
        ),
       );
  }
}


