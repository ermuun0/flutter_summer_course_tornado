import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:icodegram/screen/home_screen.dart';
import 'package:icodegram/screen/profile.dart';

import '../screen/add_photo.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0;
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: onPageChanged,
            children: [HomeScreen(), AddPhoto(), Profile()],
          ),
        ),
        bottomNavigationBar: CupertinoTabBar(
          height: 80,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: _page == 0
                    ? Container(
                        height: 38,
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (Rect bounds) => RadialGradient(
                            center: Alignment.topCenter,
                            stops: [.5, 1],
                            colors: [
                              Color(0xFFE86B02),
                              Color(0xFFFA9541),
                            ],
                          ).createShader(bounds),
                          child: Column(
                            children: [
                              Icon(
                                Icons.home,
                              ),
                              Image.asset('assets/circle.png')
                            ],
                          ),
                        ),
                      )
                    : Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                label: '',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: _page == 1
                    ? Container(
                        height: 38,
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (Rect bounds) => RadialGradient(
                            center: Alignment.topCenter,
                            stops: [.5, 1],
                            colors: [
                              Color(0xFFE86B02),
                              Color(0xFFFA9541),
                            ],
                          ).createShader(bounds),
                          child: Column(
                            children: [
                              Icon(
                                Icons.add_box_outlined,
                              ),
                              Image.asset('assets/circle.png')
                            ],
                          ),
                        ),
                      )
                    : Icon(
                        Icons.add_box_outlined,
                        color: Colors.white,
                      ),
                label: '',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: _page == 2
                    ? Container(
                        height: 38,
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (Rect bounds) => RadialGradient(
                            center: Alignment.topCenter,
                            stops: [.5, 1],
                            colors: [
                              Color(0xFFE86B02),
                              Color(0xFFFA9541),
                            ],
                          ).createShader(bounds),
                          child: Column(
                            children: [
                              Icon(
                                Icons.account_circle_outlined,
                              ),
                              Image.asset('assets/circle.png')
                            ],
                          ),
                        ),
                      )
                    : Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                      ),
                label: '',
                backgroundColor: Colors.white)
          ],
          onTap: navigationTapped,
        ));
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }
}
