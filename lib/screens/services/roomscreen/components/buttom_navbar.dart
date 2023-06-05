import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/home/homepage.dart';
import 'package:hotelio/screens/services/roomscreen/favorite.dart';
import 'package:hotelio/screens/services/roomscreen/privacy_policy.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(
      left: kDefaultPadding * 2,
      right:kDefaultPadding * 2,
      bottom:kDefaultPadding  ) ,
      height:50 ,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
        offset:const Offset(0, -10),
        blurRadius: 35,
        color: kPrimaryColor.withOpacity(0.38)
      )]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
          onPressed: (){
            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const HomePage(),
                    ),
                  );
          },
          icon: const Icon(
            Icons.home,
            color: kPrimaryColor,
            size: 30, 
            ),),
             IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.menu_book_sharp,
            color: kPrimaryColor, 
            size: 30,
            ),),
            IconButton(
          onPressed: (){
            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const FavoritePage(),
                    ),
                  );
          },
          icon: const Icon(
            Icons.favorite,
            color: kPrimaryColor, 
            size: 30,
            ),),
            IconButton(
          onPressed: (){
            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const PrivacyPolicyPage(),
                    ),
                  );
          },
          icon: const Icon(
            Icons.person,
            color: kPrimaryColor, 
            size: 30,
            ),)
        ],
      ),
    );
  }
}