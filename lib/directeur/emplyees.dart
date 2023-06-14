import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class Employees extends StatelessWidget {
  const Employees({super.key});
  static const String id="Employees screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Employees ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}