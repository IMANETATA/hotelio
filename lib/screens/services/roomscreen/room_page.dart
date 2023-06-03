import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/services/roomscreen/components/body.dart';
class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:const BodyR(),
      appBar:buildAppBar(),
    );
  }
  AppBar buildAppBar(){
    return  AppBar(
      backgroundColor: kPrimaryColor,
        elevation:0 ,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: (){}
        ),
      );
  }
}