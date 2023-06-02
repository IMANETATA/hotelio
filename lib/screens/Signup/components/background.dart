import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child, 
  });

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      padding:const EdgeInsets.all(0),
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/b.png",
                            width: size.width*0.3, )
          ),
          Positioned(
            bottom: 0, 
            right: 0,
            child: Image.asset("assets/images/login_bottom.png",
                              width:size.width*0.4 , )
          ),
          child,
        ],
        ),
    );
  }
}