import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotelio/constants.dart';


class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    super.key, 
    required this.title, 
    required this.svgSrc, 
    required this.amountOfRooms, 
    required this.numOfRooms,
  });
  final String title,svgSrc,amountOfRooms;
  final int numOfRooms;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: dPadding),
      padding:const EdgeInsets.all(dPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(Radius.circular(dPadding)),

      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
           Expanded(child: 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:dPadding ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(title,maxLines: 1,overflow: TextOverflow.ellipsis),
              Text("$numOfRooms Chambres",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.black54
              ),
              ),

            ],),
          ),
          ),
          Text(amountOfRooms)
        ],
      ),
    );
  }
}
