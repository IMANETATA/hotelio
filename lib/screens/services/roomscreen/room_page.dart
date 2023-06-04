// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/services/roomscreen/components/body.dart';
//import 'package:hotelio/screens/services/roomscreen/components/body.dart';
import 'package:hotelio/screens/services/roomscreen/components/buttom_navbar.dart';
import 'package:hotelio/screens/services/roomscreen/components/my_drawer_header.dart';
import 'package:hotelio/screens/services/roomscreen/contacts.dart';
class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  var currentPage= DrawerSections.home;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var container;
    if(currentPage==DrawerSections.home){
    container=const BodyR();
    }else if(currentPage==DrawerSections.contacts){
      container=const ContactPage();
    }
    return Scaffold(
      appBar:AppBar(
        backgroundColor: kPrimaryColor,
  iconTheme: const IconThemeData(
    color: Colors.white,
    size: 30
  ),
),
      body:container,
      drawer: Drawer(
        child:SingleChildScrollView(
          child: Container(
            margin:const EdgeInsets.all(0),
            child: Column(
              children: [
              const MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ) ,
      ),
      bottomNavigationBar:const BottomNavBar(),
    );
  }

    // ignore: non_constant_identifier_names
    Widget  MyDrawerList(){
      
      return Container(
        padding:const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            menuItem(
              1,"home",Icons.home_outlined,
              currentPage == DrawerSections.home? true : false
            ),
             menuItem(
              2,"Contacts",Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts? true : false
            ),
             menuItem(
              3,"Events",Icons.event,
              currentPage == DrawerSections.events? true : false
            ),
             menuItem(
              4,"Notes",Icons.notes,
              currentPage == DrawerSections.notes? true : false
            ),
            menuItem(
              5,"Settings",Icons.settings_outlined,
              currentPage == DrawerSections.settings? true : false
            ),
             menuItem(
              6,"Notifications",Icons.notifications_outlined,
              currentPage == DrawerSections.notifications? true : false
            ),
             menuItem(
              7,"Privacy policy",Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy? true : false
            ),
             menuItem(
              8,"Send feedback",Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback? true : false
            ),

          ],
        ),
      );
    }

    Widget menuItem(int id,String title,IconData icon , bool selected ){
      return  Material(
        color: selected ? Colors.grey[300] : Colors.transparent ,
        child: InkWell(
          onTap:(){
            Navigator.pop(context);
            setState(() {
              if(id==1){
                currentPage=DrawerSections.home;
              }else if(id==2){
                currentPage=DrawerSections.contacts;
              }else if(id==3){
                currentPage=DrawerSections.events;
              }else if(id==4){
                currentPage=DrawerSections.notes;
              }else if(id==5){
                currentPage=DrawerSections.settings;
              }else if(id==6){
                currentPage=DrawerSections.notifications;
              }else if(id==7){
                currentPage=DrawerSections.privacy_policy;
              }else if(id==8){
                currentPage=DrawerSections.send_feedback;
              }
            });
          } ,
          child: Padding(
                padding:const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(child: Icon(
                    icon,
                    size: 20,
                    color: Colors.black,
                    )
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        title,
                        style:const TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    ),))
                  ],
                ),
          ),
        ),
      );
    }
}
        enum DrawerSections{
              home,
              contacts,
              events,
              notes,
              settings,
              notifications,
              privacy_policy,
              send_feedback,

            }