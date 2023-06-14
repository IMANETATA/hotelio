import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class Tables extends StatelessWidget {
  const Tables({super.key});
  static const String id="Tables screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Tables ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}