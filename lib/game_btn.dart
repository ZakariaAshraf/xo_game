import 'package:flutter/material.dart';

class GameBtn extends StatelessWidget {
  String txt;
Function onBtnClicked;
int index;
GameBtn(this.txt,this.index,this.onBtnClicked);
  @override
  Widget build(BuildContext context) {

    return  Expanded(
      child: ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFECDCDC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Color(0xff4b3131),width: 3)
        )
      ),
          onPressed: (){
        onBtnClicked(index);
          },
          child: Text(
          txt,style: TextStyle(
            color: Color(0xff000000),
        fontSize: 70,
        fontWeight: FontWeight.bold,
      ),
      )),
    );
  }
}
