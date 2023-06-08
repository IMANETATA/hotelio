import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screen/dashboard/components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const  SingleChildScrollView(
        padding: EdgeInsets.all(dPadding),
        child: Column(
          children: [
           Header()
          ],
        ),
    );
    
  }
}
