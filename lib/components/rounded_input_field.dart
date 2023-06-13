import 'package:flutter/material.dart';
import 'package:hotelio/components/text_field_container.dart';
import 'package:hotelio/constants.dart';


class RoundedInputField extends StatelessWidget {
  final String ?hintText;
  final IconData icon;
  final ValueChanged<String> ?onChanged;
  final FormFieldValidator<String>? validator;
  final void Function(String?)? onSaved;
   // ignore: prefer_const_constructors_in_immutables
   RoundedInputField({
    super.key, 
    this.hintText,
    this.icon=Icons.person,
    this.onChanged, 
     this.validator, this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
       child: TextFormField(
        onChanged:onChanged,
        validator: validator,
        onSaved: onSaved,
        decoration: InputDecoration(
         icon: Icon(icon,color: kPrimaryColor,),
         hintText: hintText,
         border: InputBorder.none
       ),),
     );
  }
}