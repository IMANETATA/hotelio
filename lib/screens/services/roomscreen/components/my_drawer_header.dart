import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});
  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:kPrimaryColor ,
      width: double.infinity ,
      height: 200,
      padding:const EdgeInsets.only(top: kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin:const EdgeInsets.only(bottom:kDefaultPadding / 2),
            height: 70,
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/profile.png")
              )
            ) ,
          ),
         const Text("Imane",style: TextStyle(
            color: Colors.white,
            fontSize: 20
            ),),
          Text("imane@gmail.com",style:TextStyle(color: Colors.grey[200],fontSize: 14) ,)
        ],
      ),
    );
  }
}