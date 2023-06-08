// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotelio/constants.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kPrimaryLightColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/icons/logoapp.png")
            ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press:(){},
          ),
          DrawerListTile(
            title: "Chambre",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press:(){},
          ),
          DrawerListTile(
            title: "Client",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press:(){},
          ),
          DrawerListTile(
            title: "Reservation",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press:(){},
          ),
          DrawerListTile(
            title: "Facture",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press:(){},
          ),
          DrawerListTile(
            title: "Tarif",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press:(){},
          ),
          DrawerListTile(
            title: "profile",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press:(){},
          )
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key, required this.title, required this.svgSrc, required this.press,
  });

  final String title,svgSrc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap:1 ,
      leading: SvgPicture.asset(svgSrc,
      color: Colors.black,
      height: 16,
      ),
      title: Text(title,style:const TextStyle(color: Colors.black),),
    );
  }
}