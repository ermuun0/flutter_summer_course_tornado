import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int a = 0;
  List<String> names = [
    'pummel',
    'Bruno',
    'pluto',
    'Samantha',
    'Dejesus',
    'Rio',
    'Bowers',
    'Elisa',
    'Shepherd',
    'Ronald',
    'Stout',
    'Chana',
    'Skinner',
    'Ridge',
    'kirrby',
    'Skyla',
    'Wilkerson',
    'Carmelo',
    'Padilla',
    'Maggie',
    'Morrow',
    'Kyree',
    'Norton',
    'Kylee',
    'Christian'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
                child: Text(names[index]));
          }),
    );
  }
}
