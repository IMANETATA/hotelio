
import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/services/roomscreen/components/header_with_search_box.dart';
import 'package:hotelio/screens/services/roomscreen/components/recomends_rooms.dart';
import 'package:hotelio/screens/services/roomscreen/components/rooms_for_booking.dart';
import 'package:hotelio/screens/services/roomscreen/components/title_with_btn_underline.dart';


class BodyR extends StatelessWidget {
  const BodyR({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return  Container(
      margin:const EdgeInsets.all(0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBox(size: size),
            TitleWithMoreBtn(
              title: "Recomended",
              press: (){},
            ),
          const RecomendsRooms(),
          TitleWithMoreBtn(
            title: "Rooms for Booking",
            press: (){}),
            const RoomsBooking(),
            const SizedBox(height: kDefaultPadding,)
          ],
        ),
      ),
    );
  }
}
