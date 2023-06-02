
import 'package:flutter/material.dart';
import 'package:hotelio/components/already_have_an_account_check.dart';
import 'package:hotelio/components/rounded_button.dart';
import 'package:hotelio/components/rounded_input_field.dart';
import 'package:hotelio/components/rounded_pessword_field.dart';
//import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/Signup/components/background.dart';
import 'package:hotelio/screens/Signup/components/or_divider.dart';
import 'package:hotelio/screens/Signup/components/social_icon.dart';
import 'package:hotelio/screens/home/homepage.dart';
import 'package:hotelio/screens/login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(color: Color.fromARGB(255, 128, 119, 119),
             // fontWeight: FontWeight.bold,
              fontFamily: "DancingScript" ,
              fontSize: 35),
            ),
            //SizedBox(height: size.height * 0.03),
            
            
            RoundedInputField(
              hintText: "Enter your Username",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Enter your Full Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Enter your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Enter your Password",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Confirm Password",
              onChanged: (value) {},
            ),
            RoundedButton(
              press: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const HomePage();
              }));
              },
              text: "Sign Up",
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }),
                );
              },
            ),
            const OrDivider(),
          Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    InkWell(
      onTap: () {
        // Action pour l'icône Google
      },
      child: SocialIcon(
        iconSrc: "assets/icons/google-plus.svg",
        press: () {},
      ),
    ),
    InkWell(
      onTap: () {
        // Action pour l'icône Facebook
      },
      child: SocialIcon(
        iconSrc: "assets/icons/facebook.svg",
        press: () {},
      ),
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
class Body extends StatelessWidget {
  
  const Body({super.key,});

  @override
  Widget build(BuildContext context) {
   Size size= MediaQuery.of(context).size;
    return Background(
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold),),
           SizedBox(height: size.height*0.03),
            RoundedInputField(
              hintText: "Enter your email",
              onChanged: (value){},
            ),
            
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedButton(
              press: (){},
              text: "Sign Up",
            ),
            SizedBox(height: size.height*0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const LoginScreen();
                }));
              },
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SocialIcon(
                iconSrc:"assets/icons/google-plus.svg" ,
                press:(){} ,
              ),
              SocialIcon(iconSrc: "assets/icons/facebook.svg", 
              press: (){
      
              })
            ],)
          ]
          ),
      )
         ,);
  }
}
*/
class BuildDivider extends StatelessWidget {
  const BuildDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        color: Color.fromARGB(255, 133, 131, 131),
        height:1.5 ,
      )
    );
  }
}