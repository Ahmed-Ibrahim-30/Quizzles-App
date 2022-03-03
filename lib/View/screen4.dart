import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/View/screen2.dart';
import 'package:untitled1/View/screen3.dart';
import 'package:untitled1/choose.dart';
import 'package:untitled1/model/all_answer.dart';
import 'package:untitled1/model/all_questions.dart';
import 'package:untitled1/next_prev_button.dart';

import '../background.dart';
import '../text.dart';

class Screen4 extends StatefulWidget {
  final score;
  Screen4(this.score);
  @override
  State<StatefulWidget> createState() => Screen4_State(score);
}

class Screen4_State extends State<Screen4> {
  final score;
  Screen4_State(this.score);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          background("image/background4.jpg"),
          Column(
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    child: ElevatedButton(
                        onPressed:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){
                            return Screen2(score:score);
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.blue,
                        ),
                        child: Icon(Icons.arrow_back,size: 24,color: Colors.white,)
                    ),
                  ),
                  SizedBox(width: 80,),
                  text("Result", Colors.cyanAccent, 35),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 12,),
                  text("Total Correct Answer :",Colors.white,20),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width: 13,),
                  text("${score/10} out of 5 Questions.",Colors.tealAccent,20),
                ],
              ),
              SizedBox(height: 40,),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage("image/img10.jpg"),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.dstOut),
                      ),
                    )),
                    Column(
                      children: [
                        SizedBox(height: 50,),
                        text("Your Final Score is ",Colors.white,30),
                        SizedBox(height: 60,),
                        Container(
                          alignment: Alignment.center,
                          height: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                          ),
                          child: text("${score}",Colors.white,90),
                        )
                      ],
                    ),
                ],
              ),
              SizedBox(height: 40,),
              Container(
                width: 300,
                height: 60,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pop(MaterialPageRoute(builder: (_){
                        return Screen2();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        ImageIcon(AssetImage("image/img5.png")),
                        SizedBox(width: 45,),
                        text("Try Again",Colors.white,30),
                      ],
                    )
                ),
              )


            ],
          )
        ],
      ),
    );
  }
}
