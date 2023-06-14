import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class Factures extends StatelessWidget {
  const Factures({super.key});
  static const String id="Factures screen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Factures ",style: TextStyle(
        fontSize: 30,
        color: kPrimaryColor,
      ),),
    );
  }
}