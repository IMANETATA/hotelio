
import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/services/details/details_screen.dart';
class RecomendsRooms extends StatelessWidget {
  const RecomendsRooms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendRoomCard(
            image: "assets/images/chambre.png",
            title:"luxury" ,
            type:"comfort" ,
            price:440 ,
            press:(){
              Navigator.push(
              context, 
              MaterialPageRoute(builder: (context){
                return const DetailsScreen();
              }));
            } ,
          ),
          RecomendRoomCard(
            image: "assets/images/chamb.png",
            title:"standard" ,
            type:"relax" ,
            price:350 ,
            press:(){
              Navigator.push(
              context, 
              MaterialPageRoute(builder: (context){
                return const DetailsScreen();
              }));
            } ,
          ),
          RecomendRoomCard(
            image: "assets/images/cham.png",
            title:"standard" ,
            type:"relax" ,
            price:320 ,
            press:(){
              Navigator.push(
              context, 
              MaterialPageRoute(builder: (context){
                return const DetailsScreen();
              }));
            } ,
          ),
        ],
      ),
    );
  }
}

class RecomendRoomCard extends StatelessWidget {
  const RecomendRoomCard({
    super.key, required this.image, required this.title, required this.type, required this.price, required this.press,
    
  });

final String image,title,type;
final int price;
final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin:const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding:const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:const BorderRadius.all(
                  Radius.circular(10),
                  ),
                boxShadow: [
                  BoxShadow(offset:const Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.4)
                  )
                ]
                ),
                child:Row(
                  children: [
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(text:"$title\n".toUpperCase(),style: Theme.of(context).textTheme.labelLarge),
                        // ignore: unnecessary_string_interpolations
                        TextSpan(text: "$type" ,style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.7),
                          ),
                          )
                      ],
                    ),
                    ),
                    const Spacer(),
                    Text("$price MAD",style:Theme.of(context).textTheme.labelLarge!.copyWith(color:kPrimaryColor))
                  ],
                ) ,
            ),
          )
        ],
      ),
    );
  }
}
