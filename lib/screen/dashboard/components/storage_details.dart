import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screen/dashboard/components/storage_info_card.dart';

import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(dPadding) ,
      
      decoration:const BoxDecoration(color:Color.fromARGB(19, 22, 21, 21),
      borderRadius: BorderRadius.all(Radius.circular(10)) 
      ) ,
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Storage Details",
          style:TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500
          ),
          ),
          SizedBox(height: dPadding,),
          Chart(),
          StorageInfoCard(
            svgSrc:"" ,
            title: "Rooms",
            amountOfRooms:"20%" ,
            numOfRooms:200 ,
          ),
          StorageInfoCard(
            svgSrc:"" ,
            title: "Clients",
            amountOfRooms:"30%" ,
            numOfRooms:400 ,
          ),StorageInfoCard(
            svgSrc:"" ,
            title: "Reservation",
            amountOfRooms:"30%" ,
            numOfRooms:400 ,
          ),
          StorageInfoCard(
            svgSrc:"" ,
            title: "Factures",
            amountOfRooms:"30%" ,
            numOfRooms:400 ,
          )
        ]) ,
    );
  }
}
