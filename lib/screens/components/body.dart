import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/Signup/signup_screen.dart';
import 'package:hotelio/screens/components/background.dart';
import 'package:hotelio/components/rounded_button.dart';
import 'package:hotelio/screens/home/homepage.dart';
import 'package:hotelio/screens/login/login_screen.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to Hotelio",
              style: TextStyle(
                color: Color.fromARGB(255, 128, 119, 119),
                fontWeight: FontWeight.bold,
                fontFamily: "DancingScript",
                fontSize: 35,
              ),
            ),
            const SizedBox(height: 30),
            Image.asset(
              "assets/icons/lit.png",
              height: 300,
              width: 300,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 30),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
            RoundedButton(
              text: "Sign Up",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Visite',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                //const SizedBox(width: 5),
                IconButton(
                  icon:const  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>const  HomePage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





/*
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/Signup/signup_screen.dart';
import 'package:hotelio/screens/components/background.dart';
import 'package:hotelio/components/rounded_button.dart';
import 'package:hotelio/screens/login/login_screen.dart';
//import 'package:hotelio/screens/login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {

    return Background(
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to Hotelio",
            style: TextStyle(
              color: Color.fromARGB(255, 128, 119, 119),
              fontWeight: FontWeight.bold,
              fontFamily: "DancingScript" ,
              fontSize: 35),),
          const  SizedBox(height:30),
         Image.asset("assets/icons/lit.png",height:300,width: 300,fit: BoxFit.fill, ),
          const SizedBox(height:30),
                  RoundedButton(
                  text:"LOGIN",
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  },
                  ),
                  RoundedButton(
                    text:"Sign Up",
                    color:kPrimaryLightColor ,
                    textColor: Colors.black,
                    press: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
              return const SignUpScreen();
            }));
                    },
                  )
          ],
        ),
      ) ,
    );
  }
}

*/