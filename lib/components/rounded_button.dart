import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
class RoundedButton extends StatelessWidget {
  final String ?text;
  final void Function()? press;
  final Color color,textColor;
  const RoundedButton({
    super.key,
    this.color=kPrimaryColor,
    this.text,
    this.textColor=Colors.white,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      margin:const EdgeInsets.symmetric(vertical:10, ) ,
      padding: const EdgeInsets.all(0),
      width: size.width*0.8 ,//300
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
                onPressed: press,
                style: TextButton.styleFrom(
                  padding:const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  backgroundColor: color,
                ),
                child: Text(
                  text!,
                  style: TextStyle(color:textColor,fontSize: 15),
                ),
              ),
      ),
    );
  }
}