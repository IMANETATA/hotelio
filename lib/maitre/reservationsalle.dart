import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class ReservationSalle extends StatelessWidget {
  const ReservationSalle({super.key});
  static const String id="ReservationSalle screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("ReservationSalle ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}