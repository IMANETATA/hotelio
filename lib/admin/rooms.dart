import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class Rooms extends StatelessWidget {
  const Rooms({super.key});
  static const String id="Rooms screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("rooms ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}