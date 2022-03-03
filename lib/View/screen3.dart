import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/View/screen4.dart';
import 'package:untitled1/choose.dart';
import 'package:untitled1/model/all_answer.dart';
import 'package:untitled1/model/all_questions.dart';
import 'package:untitled1/model/final_answers.dart';
import 'package:untitled1/next_prev_button.dart';
import '../background.dart';
import '../text.dart';

class Screen3 extends StatefulWidget {
  final first_Quest,end_Quest;
  Screen3(this.first_Quest,this.end_Quest);
  @override
  State<StatefulWidget> createState() => Screen3_State(first_Quest,end_Quest);
}

class Screen3_State extends State<Screen3> {
  int first_Quest,end_Quest;
  Screen3_State(this.first_Quest,this.end_Quest);
  List<Color>colors=[Colors.transparent,Colors.transparent,Colors.transparent,Colors.transparent];
  bool pressed=true;
  int correct=0;




  next_button(){
    pressed=true;
    for(int i=0;i<colors.length;i++)colors[i]=Colors.transparent;
    if(first_Quest<end_Quest) {
      first_Quest++;
    } else{
      Navigator.of(context).push(MaterialPageRoute(builder: (_){
        return Screen4(correct);
      }));
    }
  }
  prev_button(){
    pressed=true;
    for(int i=0;i<colors.length;i++)colors[i]=Colors.transparent;
    if(first_Quest%5!=0)first_Quest--;
  }
  true_answer(int index_answer){
    if(pressed){
      if(answer()[first_Quest][index_answer]!=final_answers()[first_Quest]) {
        colors[index_answer]=Colors.red;
        for(int i=0;i<answer()[first_Quest].length;i++){
          if(answer()[first_Quest][i]==final_answers()[first_Quest]){
            colors[i]=Colors.yellow;
          }
        }
      } else {
        colors[index_answer] = Colors.yellow;
        correct+=10;
      }
      pressed=false;
    }
  }


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
              text("Level 1", Colors.cyanAccent, 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  text("0${first_Quest+1}/5", Colors.red, 17),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 8),
                 Container(
                   width: MediaQuery.of(context).size.width-30,
                     child: text(Question()[first_Quest], Colors.cyanAccent, 20)
                 ),
                ],
              ),
              SizedBox(height: 100),
              choices("01", answer()[first_Quest][0],()=>setState(() =>true_answer(0)),colors[0]),
              SizedBox(height: 20),
              choices("02", answer()[first_Quest][1],()=>setState(() =>true_answer(1)),colors[1]),
              SizedBox(height: 20),
              choices("03", answer()[first_Quest][2],()=>setState(() =>true_answer(2)),colors[2]),
              SizedBox(height: 20),
              choices("04", answer()[first_Quest][3],()=>setState(() =>true_answer(3)),colors[3]),
              SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(width: 40,),
                  next_prev_button("Previous",()=>setState(() =>prev_button())),
                  SizedBox(width: 70,),
                  next_prev_button("Next",()=>setState(() =>next_button())),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
