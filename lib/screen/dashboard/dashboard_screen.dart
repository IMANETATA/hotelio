
import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screen/dashboard/components/chart.dart';
import 'package:hotelio/screen/dashboard/components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

   
    return SingleChildScrollView(
        padding:const EdgeInsets.all(dPadding),
        child: Column(
          children: [
           const Header(),
           const SizedBox(height: dPadding,),
           Row(
            children: [
              Expanded(
                flex: 5,
                child:Container(
                  height:500 ,
                  color: Colors.white,
                )
              ),
              const SizedBox(width: dPadding,),
              Expanded(
                flex: 2,
                child:Container(
                  padding:const EdgeInsets.all(dPadding) ,
                  height:500 ,
                  decoration:const BoxDecoration(color:Color.fromARGB(19, 22, 21, 21),
                  borderRadius: BorderRadius.all(Radius.circular(10)) 
                  ) ,
                  child:const Column(
                    children: [
                       Text("Storage Details",
                      style:TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                      Chart()
                    ]) ,
                )
              )
            ],
           )
          ],
        ),
    );
    
  }
}
