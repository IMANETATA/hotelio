// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:hotelio/admin/dashboard_screen.dart';
import 'package:hotelio/constants.dart';


class HomeSc extends StatefulWidget {
  const HomeSc({super.key});
  static const String id ="home_screen";
  
  @override
  State<HomeSc> createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
    Widget _selectedScreen = const DashboardScreen();
    currnetScreen(item){
  switch(item.rout){
    case DashboardScreen.id:
    setState(() {
      _selectedScreen=const DashboardScreen();
    });
  }
 }
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryLightColor,
        title:const Center(child:  Text('Admin Panel')),
      ),
      sideBar: SideBar(
        items: const [
          
          AdminMenuItem(
            title: 'Dashboard',
            route: DashboardScreen.id,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Rooms',
            route: DashboardScreen.id,
            icon: Icons.room_service,
          ),
          AdminMenuItem(
            title: 'Reservations',
            route: DashboardScreen.id,
            icon: Icons.book,
          ),
          AdminMenuItem(
            title: 'Clients',
            route: DashboardScreen.id,
            icon: Icons.person_2_rounded,
          ),
          AdminMenuItem(
            title: 'Factures',
            route: DashboardScreen.id,
            icon: Icons.list_alt,
            
          ),
          
        ],
        selectedRoute: HomeSc.id,
        onSelected: (item) {
          //if (item.route != null) {
           // Navigator.of(context).pushNamed(item.route!);
          //}
        },
       /* header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'header',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),*/
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Dashboard',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 36,
            ),
          ),
        ),
      ),
    );
  }
}