import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class FavoritePage extends StatelessWidget {
  final List<RoomInfo> favoriteRooms = [
    RoomInfo(
      image: "assets/images/chambre.png",
      title: "luxury",
      type: "comfort",
      price: 440,
    ),
    RoomInfo(
      image: "assets/images/chamb.png",
      title: "standard",
      type: "relax",
      price: 350,
    ),
    RoomInfo(
      image: "assets/images/cham.png",
      title: "standard",
      type: "relax",
      price: 320,
    ),
  ];

   FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Favorites"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: favoriteRooms.map((room) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                     // borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(room.image),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                       // borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            room.title.toUpperCase(),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            room.type,
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.7),
                            ),
                          ),
                         const  SizedBox(height: 10.0),
                          Text(
                            "${room.price} MAD",textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class RoomInfo {
  final String image;
  final String title;
  final String type;
  final int price;

  RoomInfo({
    required this.image,
    required this.title,
    required this.type,
    required this.price,
  });
}
