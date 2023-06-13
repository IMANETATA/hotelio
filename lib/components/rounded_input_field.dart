import 'package:flutter/material.dart';
import 'package:hotelio/components/text_field_container.dart';
import 'package:hotelio/constants.dart';


class RoundedInputField extends StatelessWidget {
  final String ?hintText;
  final IconData icon;
  final ValueChanged<String> ?onChanged;
  final FormFieldValidator<String>? validator;
   // ignore: prefer_const_constructors_in_immutables
   RoundedInputField({
    super.key, 
    this.hintText,
    this.icon=Icons.person,
    this.onChanged, 
     this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
       child: TextFormField(
        onChanged:onChanged,
        validator: validator,
        decoration: InputDecoration(
         icon: Icon(icon,color: kPrimaryColor,),
         hintText: hintText,
         border: InputBorder.none
       ),),
     );
  }
}