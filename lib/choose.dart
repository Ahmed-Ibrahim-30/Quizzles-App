import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/text.dart';

import 'View/screen3.dart';
import 'model/all_answer.dart';
import 'model/final_answers.dart';

class choices extends StatelessWidget{
  final num_question,choose,color;
  final void Function() functio;
  choices(this.num_question,this.choose,this.functio,this.color);

  // true_flase_answer(){
  //   return answer()[first_Quest][index]==final_answers()[first_Quest];
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: this.color,
          onPrimary: Colors.red,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80))),
        ),
        onPressed: functio,
        child: Row(
          children: [
            SizedBox(width: 6,),
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(Icons.circle,color: Colors.blue,size: 30,),
                text(num_question,Colors.white,12),
              ],
            ),
            SizedBox(width: 9,),
            text(choose,Colors.white,20),
          ],
        ),
      ),
    );
  }

}