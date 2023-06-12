import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotelio/components/already_have_an_account_check.dart';
import 'package:hotelio/components/rounded_button.dart';
import 'package:hotelio/components/rounded_input_field.dart';
import 'package:hotelio/components/rounded_pessword_field.dart';
import 'package:hotelio/screens/Signup/signup_screen.dart';
import 'package:hotelio/screens/components/background.dart';
import 'package:hotelio/screens/services/roomscreen/room_page.dart';
//import 'package:hotelio/screens/login/components/background.dart';
class Body extends StatelessWidget {
  const Body({
    super.key,
  });

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
