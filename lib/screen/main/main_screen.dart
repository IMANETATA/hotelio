// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:hotelio/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  DrawerHeader(
                    child: Image.asset("assets/icons/logoapp.png")
                  ),
                ListTile(
                  leading: SvgPicture.asset("assets/icons/menu_dashboard.svg",
                  color: Colors.black,
                  height: 16,
                  ),
                  title:const Text("Dashboard",style: TextStyle(color: Colors.black),),
                )
                ],
              )
            ),
             Expanded(
              flex:5 ,
              child: Container(
                color: Colors.white,
              )
            )
          ],
        )
      ),
    );
  }
}
/*
 Container(
                    color: kPrimaryLightColor,
                  ),*/