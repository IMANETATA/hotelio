import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class Reservations extends StatelessWidget {
  const Reservations({super.key});
  static const String id="Reservations screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Reservations ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}