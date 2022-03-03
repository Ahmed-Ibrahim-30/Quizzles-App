import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/View/screen2.dart';
import 'package:untitled1/background.dart';
import 'package:untitled1/elevatedbutton.dart';
import '../text.dart';
class Screen1 extends StatefulWidget{
  @override
  State<StatefulWidget>  createState() =>Screen1_State();
}

class Screen1_State extends State<Screen1>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          background("image/background1.jpg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                  ),
                  child: ImageIcon(
                    AssetImage('image/icon1.png'),
                    size: 150,
                     color: Colors.yellow,
                  ),
                ),
                SizedBox(height: 30,),
                text("Quizzless",Colors.lightBlue,60),
                SizedBox(height: 130,),
                text("Let's Play!",Colors.white,30),
                SizedBox(height: 10,),
                text("Play now and Level up",Colors.white,20,fontWeight: FontWeight.bold),
                SizedBox(height: 70,),
                elevatedButton("Play Now"),
                SizedBox(height: 30,),
                elevatedButton("About",background: Colors.white54,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}