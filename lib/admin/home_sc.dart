import 'package:flutter/material.dart';
class HomeSc extends StatelessWidget {
  const HomeSc({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Home SCrren admin",style: TextStyle(
          fontSize: 30,
          color: Colors.blue
        ),),
      ),
    );
  }
}