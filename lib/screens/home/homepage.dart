import 'package:flutter/material.dart';
import 'package:hotelio/components/rounded_button.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/services/restaurant_page.dart';
import 'package:hotelio/screens/services/roomscreen/room_page.dart';
import 'package:hotelio/screens/services/spa_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme:const IconThemeData(
          color: Colors.white, // Modifier la couleur de l'icône de la flèche
        ),
        title:const Text('Hotelio', style: TextStyle(color: Colors.white)),
      ),
      body:const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HotelImage(),
            SizedBox(height: 10),
            HotelDescription(),
            SizedBox(height: 10),
            BookButton(),
            SizedBox(height: 10),
            ServicesSection(),
          ],
        ),
      ),
    );
  }
}

class HotelImage extends StatelessWidget {
  const HotelImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/hotel.png',
      height: 200,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}

class HotelDescription extends StatelessWidget {
  const HotelDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(20),
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to Hotelio',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Discover, book, and enjoy the epitome'
            ' of luxury with Hotelio - your ultimat'
            ' room booking destination.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: RoundedButton(
        press: (){
         Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const RoomPage(),
                    ),
                  );
        },
        text: "Discover",
        
          ),
        );
       
     
  }
}

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our Services',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ServiceItem(
                imageUrl: 'assets/images/restaurant.png',
                label: 'Restaurant',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const RestaurantPage(),
                    ),
                  );
                },
              ),
              ServiceItem(
                imageUrl: 'assets/images/spa.png',
                label: 'Spa',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const SpaPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class ServiceItem extends StatelessWidget {
  final String imageUrl;
  final String label;
  final VoidCallback onPressed;

  const ServiceItem({super.key, required this.imageUrl, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
         const SizedBox(height: 10),
          Text(
            label,
            style:const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

