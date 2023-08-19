import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icodegram/widgets/add.dart';
import 'package:icodegram/widgets/story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
  void onPageChanged(
      int page
      ){
    setState(() {
      _page=page;
    });
  }
  void navigationTapped(
      int page
      ){
    pageController.jumpToPage(page);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  'iCodegram',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddButton(),
                  Story('Төгөлдөр'),
                  Story('Сарнай'),
                  Story('Ханхүү')
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/home.svg',

            ), label: '',

            ),
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/add_box.svg'), label: ''),
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/user.svg'), label: '')
          ],
        ));
  }
}
