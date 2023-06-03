import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(
        bottom: kDefaultPadding * 2.5
      ),
      padding:const EdgeInsets.all(0),
      height: size.height*0.2,
      child: Stack(
        children: [
          Container(
            padding:const EdgeInsets.only(left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: 36 + kDefaultPadding,
            
            ),
            height: size.height*0.2 - 27,
            decoration:const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36)
              )
              ),
              child: Row(
                children: [
                  Text(" Hi Hotelioers !",style:Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.white,
                    fontFamily: "DancingScript",
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  const Spacer(),
                  ClipRRect(
                    
                   // margin:EdgeInsets.only(left: 20),
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/icons/lit.jpg",
                      width: 46, // Définissez la largeur souhaitée
                      height: 46, // Définissez la hauteur souhaitée
                      fit: BoxFit.cover, // Ajustez le contenu pour remplir les dimensions
                    ),
                  )
                                    //Image.asset("assets/icons/lit.jpg",)
                ],
              ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0, 
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset:const Offset(0,10),
                                blurRadius: 50,
                                color: kPrimaryColor.withOpacity(0.23)
                              )]
                            ),
                            child:Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    onChanged: (value){

                                    },
                                    decoration: InputDecoration(
                                      hintText: "Search",
                                      hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5)
                                      ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.search,
                                  color: kPrimaryLightColor,
                                    ),
                              ],
                            ) ,
              )
          
          )
        ],
      ),
    );
  }
}