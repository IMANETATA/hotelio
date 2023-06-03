import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';


class RoomsBooking extends StatelessWidget {
  const RoomsBooking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RoomsForBooking(
            image: "assets/images/chambre.png",
            press: (){},
          ),
          RoomsForBooking(
            image: "assets/images/chamb.png",
            press: (){},
          ),
          RoomsForBooking(
            image: "assets/images/cham.png",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class RoomsForBooking extends StatelessWidget {
  const RoomsForBooking({
    super.key, required this.image, required this.press,
  
  });

final String image;
final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:const EdgeInsets.only(left: kDefaultPadding,
                                top: kDefaultPadding / 2,
                                bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage(image) )
        ),
      ),
    );
  }
}
