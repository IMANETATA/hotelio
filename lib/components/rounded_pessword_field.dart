// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:hotelio/components/text_field_container.dart';
import 'package:hotelio/constants.dart';
class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final String ?hintText;
  const RoundedPasswordField({
    Key? key,
    this.onChanged, 
    this.hintText,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: !_isPasswordVisible,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          icon:const Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
              color: kPrimaryColor,
            ),
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

/*
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> ?onChanged;
  const RoundedPasswordField({
    super.key, 
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child:TextField(
        obscureText:true ,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: "Password",
          icon:Icon(
            Icons.lock,
            color:kPrimaryColor),
            suffixIcon: Icon(
                    Icons.visibility,
                    color:kPrimaryColor ,),
            border: InputBorder.none,
             ),
      )
    );
  }
}

*/