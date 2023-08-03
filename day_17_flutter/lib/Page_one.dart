import 'package:day_17_flutter/page_2.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Page 1',
      )),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                   context, MaterialPageRoute(builder: (context) => const PageTwo())
                  );
                }, child: Text('Go to Page 2')),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Go to Home Page'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
