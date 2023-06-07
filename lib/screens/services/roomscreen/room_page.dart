// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/services/roomscreen/components/body.dart';
import 'package:hotelio/screens/services/roomscreen/components/buttom_navbar.dart';
import 'package:hotelio/screens/services/roomscreen/components/my_drawer_header.dart';
import 'package:hotelio/screens/services/roomscreen/favorite.dart';
import 'package:hotelio/screens/services/roomscreen/feedback.dart';
import 'package:hotelio/screens/services/roomscreen/notifications.dart';
import 'package:hotelio/screens/services/roomscreen/privacy_policy.dart';
import 'package:hotelio/screens/services/roomscreen/services.dart';
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
    }else if(currentPage==DrawerSections.search){
      container=const BodyR();
    }else if(currentPage==DrawerSections.services){
      container=const ServicePage();
    }else if(currentPage==DrawerSections.privacy_policy){
      container=const PrivacyPolicyPage();
    }else if(currentPage==DrawerSections.notifications){
      container=const NotificationPage();
    }else if(currentPage==DrawerSections.send_feedback){
      container=const FeedbackPage();
    }else if(currentPage==DrawerSections.favorites){
      container=  FavoritePage();
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
              1,"Home",Icons.home_outlined,
              currentPage == DrawerSections.home? true : false
            ),
             menuItem(
              2,"Search",Icons.search,
              currentPage == DrawerSections.search? true : false
            ),
             menuItem(
              3,"Services",Icons.room_service,
              currentPage == DrawerSections.services? true : false
            ),
             menuItem(
              4,"Privacy policy",Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy? true : false
            ),
            menuItem(
              5,"Notifications",Icons.notifications,
              currentPage == DrawerSections.notifications? true : false
            ),
             menuItem(
              6,"Send feedback",Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback? true : false
            ),
             menuItem(
              7,"Favorites",Icons.favorite,
              currentPage == DrawerSections.favorites? true : false
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
                currentPage=DrawerSections.search;
              }else if(id==3){
                currentPage=DrawerSections.services;
              }else if(id==4){
                currentPage=DrawerSections.privacy_policy;
              }else if(id==5){
                currentPage=DrawerSections.notifications;
              }else if(id==6){
                currentPage=DrawerSections.send_feedback;
              }else if(id==7){
                currentPage=DrawerSections.favorites;
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
              search,
              services,
              privacy_policy,
              notifications,
              send_feedback,
              favorites,
            }