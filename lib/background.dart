import 'package:flutter/cupertino.dart';

Widget background(String imagepath){
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(imagepath),
          fit: BoxFit.fill,
          //colorFilter: ColorFilter.mode(Colors.white70, BlendMode.dstATop)
        )
    ),
  );
}