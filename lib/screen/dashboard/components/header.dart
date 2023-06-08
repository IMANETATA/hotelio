import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';


class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
     children: [
       Text("Dashboard",style:TextStyle(
        fontSize: 30,
        color: kPrimaryColor
       ) ),
       //Theme.of(context).textTheme.headlineMedium),
       Spacer(flex: 2,),
       Expanded(
         child: SearchField()
       ),
     ProfileCard()
     ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(left: dPadding),
      padding:const EdgeInsets.symmetric(horizontal: dPadding,
      vertical: dPadding / 2
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius:const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color:kPrimaryLightColor),

      ),
      child: Row(
        children: [
          Image.asset("assets/images/profilepic.png",
          height: 38,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: dPadding / 2),
            child: Text("Admin",style: TextStyle(color: Colors.black),),
          ),
          const Icon(Icons.keyboard_arrow_down,color: Colors.black,),
    
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText:"Search" ,
        fillColor: kPrimaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,borderRadius:BorderRadius.all(Radius.circular(10))
        ),
        suffixIcon: InkWell(
          onTap:(){

          } ,
          child: Container(
            padding: const EdgeInsets.all(dPadding * 0.75),
            margin:const EdgeInsets.symmetric(
              horizontal: dPadding / 2
            ) ,
            decoration:const BoxDecoration(
              color: kPrimaryColor,
              borderRadius:BorderRadius.all(Radius.circular(10))
            ),
            child:const Icon(
              Icons.search,color: Colors.white,
            ) ,
          ),
        )
      ),
    );
  }
}