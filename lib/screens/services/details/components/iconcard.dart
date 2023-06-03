import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';


class IconCard extends StatelessWidget {
  const IconCard({
    super.key, required this.icon, required this.color,
    
  });

  final IconData icon;
  final Color color;
  

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      margin:EdgeInsets.symmetric(vertical: size.height * 0.03) ,
      padding:const EdgeInsets.all(kDefaultPadding / 2) ,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [BoxShadow(offset:const Offset(0,15),
        blurRadius:22,
        color: kPrimaryColor.withOpacity(0.22)
         ),
         BoxShadow(offset:const Offset(-15, -15),
         blurRadius: 20,
         color:kPrimaryColor.withOpacity(0.22))
         ]
      ),
      child:Icon(
        icon,
        color: color,
        size: 30,
      ),
    );
  }
}