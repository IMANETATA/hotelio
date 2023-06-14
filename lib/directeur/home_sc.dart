// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:hotelio/admin/clients.dart';
import 'package:hotelio/admin/dashboard_screen.dart';
import 'package:hotelio/admin/reservations.dart';
import 'package:hotelio/admin/rooms.dart';
import 'package:hotelio/directeur/emplyees.dart';
import 'package:hotelio/directeur/maessages_complaints.dart';



class HomeDirect extends StatefulWidget {
  const HomeDirect({super.key});
  static const String id ="home_screen";
  
  @override
  State<HomeDirect> createState() => _HomeDirectState();
}

class _HomeDirectState extends State<HomeDirect> {
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
      _selectedScreen=const Employees();
    });
    break;
    case Reservations.id:
    setState(() {
      _selectedScreen=const Reservations();
    });
    break;
    case Clients.id:
    setState(() {
      _selectedScreen=const MessagesComplaints();
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
        title:const Center(child:  Text('Director Panel',style: TextStyle(
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
            title: 'Employees',
            route:Employees.id,
            icon: Icons.emoji_people_outlined,
          ),
          AdminMenuItem(
            title: 'Reservations',
            route: Reservations.id,
            icon: Icons.book,
          ),
          AdminMenuItem(
            title: 'Messages and complaints',
            route: MessagesComplaints.id,
            icon: Icons.message,
          ),
        
          
        ],
        selectedRoute: HomeDirect.id,
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