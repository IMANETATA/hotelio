
import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screen/dashboard/components/header.dart';
import 'package:hotelio/screen/dashboard/components/storage_details.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child:Column(
                  children: [
                    Row(
                      children: [
                        Text("MyFiles")
                      ],
                    )
                  ],)
              ),
              const SizedBox(width: dPadding,),
              const Expanded(
                flex: 2,
                child:StorageDetails()
              )
            ],
           )
          ],
        ),
    );
    
  }
}
