import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/Signup/components/body.dart';



class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
     Size size= MediaQuery.of(context).size;
    return Container(
      margin:EdgeInsets.symmetric(vertical: size.height*0.02),
      width: size.width*0.8,
      child: const Row(
        children: [
          BuildDivider(),
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
           child: Text("OR",style: TextStyle(
            color:kPrimaryColor,
            fontWeight: FontWeight.w600 ),
            ),
         ),
         BuildDivider()
        ],
      ),
    );
  }
}
