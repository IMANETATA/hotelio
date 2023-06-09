
import 'package:flutter/material.dart';
import 'package:hotelio/screen/dashboard/dashboard_screen.dart';
import 'package:hotelio/screen/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SideMenu()
            ),
             Expanded(
              flex:5 ,
              child: DashboardScreen()
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