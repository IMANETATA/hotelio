import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotelio/components/rounded_button.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/login/login_screen.dart';
import 'package:hotelio/screens/services/restaurant_page.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HotelImage(),
            const SizedBox(height: 10),
            const HotelDescription(),
            const SizedBox(height: 10),
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
              ),
              items: [
                Image.asset(
                  'assets/images/otel.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/restau.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/spa1.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const BookButton(),
            const SizedBox(height: 10),
            const ServicesSection(),
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
                      builder: (context) =>const LoginScreen(),
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

