import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager('Food Tester'), // *1*
      ),
    );
  }
}
// *1* food tester e preluat de clasa ProductManager si de metoda initState()
//a.incat la primul build acesta este produsul initial.
