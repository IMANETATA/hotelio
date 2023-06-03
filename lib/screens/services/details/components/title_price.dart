import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';


class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key, required this.title, required this.type, required this.price,
  });

final String title,type;
final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: "$title\n",style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: kTextColor,
                  fontWeight: FontWeight.bold)
              ),
               TextSpan(
                // ignore: unnecessary_string_interpolations
                text: type,
                style:const TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w300,
                )
              )
            ]
          )
          ),
          const Spacer(),
          Text("$price MAD / Night",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
