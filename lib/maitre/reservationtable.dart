import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class ReservationTable extends StatelessWidget {
  const ReservationTable({super.key});
  static const String id="ReservationTable screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("ReservationTable ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}