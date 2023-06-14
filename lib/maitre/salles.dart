import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class Salles extends StatelessWidget {
  const Salles({super.key});
  static const String id="Salles screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Salles ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}