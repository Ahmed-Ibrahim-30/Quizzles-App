import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled1/appbar_1.dart';
import 'View/screen1.dart';
import 'View/screen2.dart';
import 'View/screen3.dart';
import 'View/screen4.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Screen1(),
      ),
    );
  }


}