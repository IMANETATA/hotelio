import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';


class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("MyFiles",style:Theme.of(context).textTheme.titleSmall ),
            ElevatedButton.icon(
              style:TextButton.styleFrom(
                padding:const EdgeInsets.symmetric(horizontal: dPadding * 1.5 ,vertical:dPadding )
              ) ,
              onPressed: (){},
              icon:const Icon(Icons.add) ,
              label:const Text("Add New"),
              ),
              SizedBox(height: dPadding),
              //GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: Icons.looks_4) ,)
          ],
        )
      ],);
  }
}
