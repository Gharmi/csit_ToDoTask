import 'package:csit_workshop/screens/homePage.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_rive';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'To Do List',
    home: HomePage());
  }
}
