import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/Signup/signup_screen.dart';
import 'package:hotelio/screens/login/login_screen.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function ?press;
  const AlreadyHaveAnAccountCheck({
    super.key, 
    this.login=true, 
    this.press, 
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Text(login ? "Don't have an Account ? " : "Already have An Account ?" ,
       style:const TextStyle(color: kPrimaryColor) ,),
      InkWell(
  onTap: () {
    if (login) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  },
  child: Text(
    login ? "Sign Up" : "Sign In",
    style: const TextStyle(
      color: kPrimaryColor,
      fontWeight: FontWeight.bold,
    ),
  ),
),
     ],
        );
  }
}

