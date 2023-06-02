import 'package:flutter/material.dart';
import 'package:hotelio/components/text_field_container.dart';
import 'package:hotelio/constants.dart';


class RoundedInputField extends StatelessWidget {
  final String ?hintText;
  final IconData icon;
  final ValueChanged<String> ?onChanged;
   // ignore: prefer_const_constructors_in_immutables
   RoundedInputField({
    super.key, 
     this.hintText,
     this.icon=Icons.person,
     this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
       child: TextField(
        onChanged:onChanged,
        decoration: InputDecoration(
         icon: Icon(icon,color: kPrimaryColor,),
         hintText: hintText,
         border: InputBorder.none
       ),),
     );
  }
}