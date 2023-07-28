import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {


  final String Bname ;
  final Color? bgcolor;
  final Icon? icon;
  final TextStyle? textStyle;
  final VoidCallback? callback;
  final double width_of_button;
  final Function(int a) ;

  RoundedButton({
     required this.Bname ,
    this.bgcolor = Colors.blue,
    this.icon  ,
    this.textStyle,
    this.callback,
    this.width_of_button = 100 ,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width_of_button,
      child: ElevatedButton(
          onPressed: (){
            fun!(2);
          },
          child: icon != null ? Row(
            children: [
              icon!,
              Text(Bname , style: textStyle ),
        ],

          ) : Text(Bname , style: textStyle ),

        style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22) , topRight: Radius.circular(22)),
          )
        ),

      ),
    );
  }
}