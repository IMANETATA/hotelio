import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/services/details/components/iconcard.dart';

class ImageandIcons extends StatelessWidget {
  const ImageandIcons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 2),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child:Padding(
                padding:const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
                child: Column(
                            children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    //padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    onPressed: (){
                    Navigator.pop(context);
                  }, 
                  icon:SvgPicture.asset("assets/icons/back_arrow.svg") ),
                ),
                const Spacer(),
                     const IconCard(
                     icon: Icons.wifi,
                     color: kPrimaryColor,
                      ),
                      const IconCard(
                     icon: Icons.bathtub,
                     color: kPrimaryColor,
                      ),
                      const IconCard(
                     icon: Icons.tv,
                     color: kPrimaryColor,
                      ),
                      const IconCard(
                     icon: Icons.ac_unit,
                     color: kPrimaryColor,
                      )
                            ],
                           ),
              ), 
            ),
            Container(
              height:size.height * 0.8,
              width: size.width * 0.75,
              decoration:BoxDecoration(
                borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [BoxShadow(offset:const Offset(0, 10),
                blurRadius: 60,
                color: Colors.black.withOpacity(0.4) //shadow for image
                )],
                image:const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/chambre.png"))
              ),
            )
          ],
        ),
      ),
    );
  }
}
