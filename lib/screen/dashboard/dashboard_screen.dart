
import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screen/dashboard/components/header.dart';
import 'package:hotelio/screen/dashboard/components/my_files.dart';
import 'package:hotelio/screen/dashboard/components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

   
    return const SingleChildScrollView(
        padding: EdgeInsets.all(dPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: dPadding,),
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child:MyFiles()
              ),
              SizedBox(width: dPadding,),
                Expanded(
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
