import 'package:flutter/material.dart';
import 'package:untitled1/text.dart';
import 'View/screen3.dart';

class inkWell extends StatefulWidget{
  final levelnum,color,score;
  inkWell(this.levelnum, this.color,this.score);
  @override
  State<StatefulWidget> createState() =>inkWell_state(levelnum,color,score);
}
class inkWell_state extends State<inkWell>{
  final levelnum,color;
  int ?score;
  inkWell_state(this.levelnum, this.color,this.score);
  int first_Quest=0,end_Quest=0;
  List<String> level_available=["01"];
  List<String>?star_image=["image/img8.png", "image/img8.png", "image/img8.png"];

  Check_Availabilty(String level){
    return level_available.contains(level);
  }
  void initState(){
    super.initState();
    if((score!=null)&&(score!>=(50*0.5))){
      level_available.add(levelnum);
    }
    print("level num = "+levelnum);
    star_image![0]=(score!=null)&&(score!>=(50*0.25))?"image/img9.png":"image/img8.png";
    star_image![1]=(score!=null)&&(score!>=(50*0.5))?"image/img9.png":"image/img8.png";
    star_image![2]=(score!=null)&&(score==(50))?"image/img9.png":"image/img8.png";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          Navigator.of(context).push(MaterialPageRoute(builder: (_){
            if(levelnum=="01"){first_Quest=0; end_Quest=4;}
            else if(levelnum=="02"){first_Quest=5; end_Quest=first_Quest+4;}
            else if(levelnum=="03"){first_Quest=10; end_Quest=first_Quest+4;}
            else if(levelnum=="04"){first_Quest=15; end_Quest=first_Quest+4;}
            else if(levelnum=="05"){first_Quest=20; end_Quest=first_Quest+4;}
            else if(levelnum=="06"){first_Quest=25; end_Quest=first_Quest;}
            return Screen3(first_Quest,end_Quest);
          }));
        });
      },
      highlightColor: Colors.red,
      focusColor: Colors.red,
      hoverColor: Colors.red,
      child: Column(
        children: [
          Image.asset(star_image![0],height: 26,color: Colors.yellow,),
          Row(
            children: [
              Image.asset(star_image![1],height: 26,width: 40,color: Colors.yellow,),
              SizedBox(width: 30,),
              Image.asset(star_image![2],height: 26,width: 40,color: Colors.yellow,),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("image/img7.png",width: 110,height: 110,color: color,),
              Check_Availabilty(levelnum)?Column(
                children: [
                  SizedBox(height: 10,),
                  text("Level", Colors.white, 24),
                  text(levelnum, Colors.white, 24),
                ],
              ):Icon(Icons.lock,size: 40,color: Colors.amber,),
            ],
          ),

        ],
      ),
    );
  }
}
