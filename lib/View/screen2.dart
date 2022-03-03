import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/View/screen1.dart';
import 'package:untitled1/background.dart';
import 'package:untitled1/inkwell.dart';
import 'package:untitled1/model/all_questions.dart';
import '../text.dart';

double sizedbox1=40,sizedbox2=90;

class Screen2 extends StatefulWidget{
  final score;
  Screen2({this.score});
  @override
  State<StatefulWidget> createState() =>screen2_state(score: score);
}
class screen2_state extends State<Screen2>{
  final score;
  screen2_state({this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background("image/background4.jpg"),
          ListView(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 20,),
                          ElevatedButton(
                              onPressed: (){
                                Navigator.of(context).pop(
                                    MaterialPageRoute(builder: (_){return Screen1();})
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.indigo,
                                fixedSize: Size(50, 50),
                              ),
                              child: Icon(Icons.arrow_back,size: 27,)
                          ),
                          SizedBox(width: 70,),
                          text("Levels",Colors.cyanAccent,30),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          SizedBox(width: sizedbox1,),
                          inkWell("01", Colors.teal,score),
                          SizedBox(width: sizedbox2,),
                          inkWell("02", Colors.red,score),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          SizedBox(width: sizedbox1,),
                          inkWell("03", Colors.deepOrange,score),
                          SizedBox(width: sizedbox2,),
                          inkWell("04", Colors.yellow,score),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          SizedBox(width: sizedbox1,),
                          inkWell("05", Colors.pink,score),
                          SizedBox(width: sizedbox2,),
                          inkWell("06", Colors.purple,score),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}