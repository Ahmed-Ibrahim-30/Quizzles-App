import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'View/screen2.dart';
import 'text.dart';
class elevatedButton extends StatefulWidget{
  final button,background;

  elevatedButton(this.button,{this.background=Colors.blueAccent});

  @override
  State<StatefulWidget> createState() =>elevatedButton_state(button,background);
}

class elevatedButton_state extends State<elevatedButton>{
  final button,background;
  elevatedButton_state(this.button, this.background);
  Playnow_function(BuildContext context){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_){return Screen2();})
    );
  }
  about_function(BuildContext context){
    showDialog(context: context, builder: (BuildContext ct){
      return AlertDialog(
        title: Text("About program"),
        content: Container(
          height: 190,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(color: Colors.blueAccent,height: 8,thickness: 4,),
              text("Programmer : Ahmed Ibrahim\n",Colors.black,18),
              text("Email : ahmedibrahim55518@gmail.com\n",Colors.black,14),
              text("github : https://github.com/Ahmed-Ibrahim-30",Colors.black,12),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: (){
          button=="Play Now"?Playnow_function(context):about_function(context);
        },
        child: text(button,Colors.white,20),
        style: ElevatedButton.styleFrom(
          primary: background,
          side:BorderSide(style: BorderStyle.solid,width: 3,color: Colors.teal),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        ),

      ),
    );
  }
}