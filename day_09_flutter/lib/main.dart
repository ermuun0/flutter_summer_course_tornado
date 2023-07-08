import 'package:flutter/material.dart';

void main() {
  const text = Text('Hello Flutter');
  const center = Center(child: text,);
  const materialApp = MaterialApp(home: center);
  runApp( MaterialApp(
  title: 'Text',
      home: Scaffold(
      body: const Center(child: Text('hello')),
        appBar: AppBar(
          title: const Text ('Hello')
        ),

  ),
  ));

}


