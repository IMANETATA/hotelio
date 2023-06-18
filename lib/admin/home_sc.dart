// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:hotelio/admin/clients.dart';
import 'package:hotelio/admin/dashboard_screen.dart';
import 'package:hotelio/admin/factures.dart';
import 'package:hotelio/admin/reservations.dart';
import 'package:hotelio/admin/rooms.dart';



class HomeSc extends StatefulWidget {
  const HomeSc({super.key});
  static const String id ="home_screen";
  
  @override
  State<HomeSc> createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
    Widget _selectedScreen = DashboardScreen();
    currnetScreen(item){
  switch(item.route){
    case DashboardScreen.id:
    setState(() {
      _selectedScreen= DashboardScreen();
    });
    break;
    case Rooms.id:
    setState(() {
      _selectedScreen=const Rooms();
    });
    break;
    case Reservations.id:
    setState(() {
      _selectedScreen=const Reservations();
    });
    break;
    case Clients.id:
    setState(() {
      _selectedScreen=const Clients();
    });
    break;
    case Factures.id:
    setState(() {
      _selectedScreen=const Factures();
    });
    break;
  }
 }
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title:const Center(child:  Text('Receptionist Panel',style: TextStyle(
          color: Colors.white
        ),)),
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
            route: Rooms.id,
            icon: Icons.room_service,
          ),
          AdminMenuItem(
            title: 'Reservations',
            route: Reservations.id,
            icon: Icons.book,
          ),
          AdminMenuItem(
            title: 'Clients',
            route: Clients.id,
            icon: Icons.person_2_rounded,
          ),
          AdminMenuItem(
            title: 'Factures',
            route: Factures.id,
            icon: Icons.list_alt,
            
          ),
          
        ],
        selectedRoute: HomeSc.id,
        onSelected: (item) {
          currnetScreen(item);
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
        child: _selectedScreen,
      ),
    );
  }
}