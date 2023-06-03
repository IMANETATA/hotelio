import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/services/details/components/image_icons.dart';
import 'package:hotelio/screens/services/details/components/title_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageandIcons(size: size),
           const TitleAndPrice(
              title: "Luxury",
              type: "Relax",
              price: 440,
            ),
            const SizedBox(height:kDefaultPadding ,),
            Row(children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20)
                    ),
                  ),
                  backgroundColor: kPrimaryLightColor,
                ),
                child:const Text("Book Now",
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ) ,
                ) ,
                onPressed:(){} ,),
              ),
              Expanded(child: ElevatedButton(child:const Text("Description"),
              onPressed:(){} ,))
            ],),
            
          ],
        ),
      ),
    );
  }
}
