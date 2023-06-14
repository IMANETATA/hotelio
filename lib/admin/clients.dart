import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class Clients extends StatelessWidget {
  const Clients({super.key});
  static const String id="Clients screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("clients ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}