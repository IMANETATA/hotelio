// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:hotelio/admin/clients.dart';
import 'package:hotelio/admin/dashboard_screen.dart';
import 'package:hotelio/admin/factures.dart';
import 'package:hotelio/admin/reservations.dart';
import 'package:hotelio/admin/rooms.dart';
import 'package:hotelio/maitre/reservationtable.dart';

class HomeMaster extends StatefulWidget {
  const HomeMaster({super.key});
  static const String id ="home_screen";
  
  @override
  State<HomeMaster> createState() => _HomeMasterState();
}

class _HomeMasterState extends State<HomeMaster> {
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
        title:const Center(child:  Text('Master Panel',style: TextStyle(
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
            title: 'Salles',
            route: Rooms.id,
            icon: Icons.bed,
          ),
          AdminMenuItem(
            title: 'Tables',
            route: Reservations.id,
            icon: Icons.table_bar,
          ),
          AdminMenuItem(
            title: 'Reservations Salles',
            route: Clients.id,
            icon: Icons.spa_outlined,
          ),
          AdminMenuItem(
            title: 'Reservations Tables',
            route: ReservationTable.id,
            icon: Icons.restaurant_rounded,
            
          ),
          
        ],
        selectedRoute: HomeMaster.id,
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