
// ignore_for_file: use_build_context_synchronously, unused_local_variable, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
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
  String email = '';
  String password = '';
  bool showEmailError = false; // Variable pour afficher ou masquer le message d'erreur d'email
  bool showPasswordError = false; // Variable pour afficher ou masquer le message d'erreur de mot de passe

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                color: Color.fromARGB(255, 128, 119, 119),
                fontFamily: "DancingScript",
                fontSize: 35,
              ),
            ),
            const SizedBox(height: 30),
            Image.asset(
              "assets/icons/logoapp.png",
              height: 120,
              width: 150,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 30),
            RoundedInputField(
              hintText: "Enter your Email",
              onChanged: (value) {
                setState(() {
                  email = value;
                  showEmailError = false; // Réinitialise le message d'erreur d'email lorsqu'il y a une modification
                });
              },
            ),
            if (showEmailError) // Affiche le message d'erreur d'email si showEmailError est true
              const Text(
                "Invalid email. Please enter a valid email address.",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            RoundedPasswordField(
              hintText: "Enter your Password",
              onChanged: (value) {
                setState(() {
                  password = value;
                  showPasswordError = false; // Réinitialise le message d'erreur de mot de passe lorsqu'il y a une modification
                });
              },
            ),
            if (showPasswordError) // Affiche le message d'erreur de mot de passe si showPasswordError est true
              const Text(
                "Incorrect password. Please try again.",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            RoundedButton(
              text: "LOGIN",
              press: () async {
                if (!isValidEmail(email)) {
                  setState(() {
                    showEmailError = true; // Affiche le message d'erreur d'email
                  });
                  return;
                }

                try {
                  UserCredential userCredential =
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: email,
                    password: password,
                  );
//print(userCredential);
                  // Login successful, navigate to the desired screen
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const RoomPage();
                  }));
                } catch (e) {
                  // Handle login errors
                  setState(() {
                    showPasswordError = true; // Affiche le message d'erreur de mot de passe
                  });
                }
              },
            ),
            const Text(
              "Forgot Password ?",
              style: TextStyle(color: kPrimaryColor),
            ),
            const SizedBox(height: 30),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUpScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }

  bool isValidEmail(String value) {
    // Validation simple de l'email
    // Vous pouvez utiliser une expression régulière ou d'autres méthodes pour une validation plus précise
    return value.isNotEmpty && value.contains("@");
  }
}
