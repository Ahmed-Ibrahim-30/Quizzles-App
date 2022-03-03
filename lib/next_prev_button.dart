import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/text.dart';
import 'View/screen3.dart';
class next_prev_button extends StatelessWidget{
  final name;
  final void Function() functio;
  next_prev_button(this.name,this.functio);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 120,
      child: RaisedButton(
        onPressed: functio,
        child: text(name,Colors.white,20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.cyan,
      ),
    );
  }
}