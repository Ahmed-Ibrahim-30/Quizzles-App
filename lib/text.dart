import 'package:flutter/cupertino.dart';

Text text(String text,Color color,double fontsize, {FontWeight fontWeight=FontWeight.bold}){
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontsize,
      fontWeight: fontWeight,
    ),
  );
}