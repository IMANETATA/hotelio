import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hotelio/components/already_have_an_account_check.dart';
import 'package:hotelio/components/rounded_button.dart';
import 'package:hotelio/components/rounded_input_field.dart';
import 'package:hotelio/components/rounded_pessword_field.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/Signup/signup_screen.dart';
import 'package:hotelio/screens/components/background.dart';
import 'package:hotelio/screens/services/roomscreen/room_page.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

 

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Login",style: TextStyle(//fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 128, 119, 119),
             // fontWeight: FontWeight.bold,
              fontFamily: "DancingScript",
              fontSize: 35),),
          const SizedBox(height:30 ),
          Image.asset("assets/icons/logoapp.png",height:120,width: 150,fit: BoxFit.fill, ),
          const SizedBox(height:30 ),
         RoundedInputField(
          hintText: "Enter your Email",
          onChanged:(value){} ),
          RoundedPasswordField(
            hintText: "Enter your Password",
            onChanged:(value){ } ,
          ),
          RoundedButton(
            text: "LOGIN",
            press: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const RoomPage();
              }));
            },
          ),
          const Text("Forgot Password ?",style: TextStyle(
            color: kPrimaryColor
          ),),
          const SizedBox(height:30 ),
           AlreadyHaveAnAccountCheck(
            press:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const SignUpScreen();
              }));
            } ,)
        ],
          ),
      ),);
  }
}
