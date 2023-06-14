import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  static const String id="dashboard screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("dashboard ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}