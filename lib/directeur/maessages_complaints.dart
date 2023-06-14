import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class MessagesComplaints extends StatelessWidget {
  const MessagesComplaints({super.key});
  static const String id="MessagesComplaints screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("MessagesComplaints ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}