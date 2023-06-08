import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        padding:const EdgeInsets.all(dPadding),
        child: Column(
          children: [
           Row(
            children: [
              Text("Dashboard",style: Theme.of(context).textTheme.headlineMedium,),
              const Spacer(),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: kPrimaryColor,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,borderRadius:BorderRadius.all(Radius.circular(10))
                    ),
                    suffixIcon: InkWell(
                      onTap:(){

                      } ,
                      child: Container(
                        padding: const EdgeInsets.all(dPadding * 0.75),
                        margin:const EdgeInsets.symmetric(
                          horizontal: dPadding / 2
                        ) ,
                        decoration:const BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius:BorderRadius.all(Radius.circular(10))
                        ),
                        child:const Icon(
                          Icons.search,color: Colors.white,
                        ) ,
                      ),
                    )
                  ),
                )
              )
            ],
           )
          ],
        ),
    );
    
  }
}