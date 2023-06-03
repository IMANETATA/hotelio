
import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/services/roomscreen/components/header_with_search_box.dart';


class BodyR extends StatelessWidget {
  const BodyR({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          Container(
            height: 24,
            child: Stack(
              children: [
                Text("Recomended",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2),
                )
              ],
            ),
            )
        ],
      ),
    );
  }
}
