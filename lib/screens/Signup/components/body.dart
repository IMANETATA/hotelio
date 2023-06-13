
// ignore_for_file: use_build_context_synchronously, unused_field, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hotelio/components/already_have_an_account_check.dart';
import 'package:hotelio/components/rounded_button.dart';
import 'package:hotelio/components/rounded_input_field.dart';
import 'package:hotelio/components/rounded_pessword_field.dart';
//import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/Signup/components/background.dart';
import 'package:hotelio/screens/Signup/components/or_divider.dart';
import 'package:hotelio/screens/Signup/components/social_icon.dart';

import 'package:hotelio/screens/login/login_screen.dart';
import 'package:hotelio/screens/services/roomscreen/room_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  String username = '';
  String fullName = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  String usernameError = '';
  String fullNameError = '';
  String emailError = '';
  String emailFormatError = '';
  String passwordError = '';
  String confirmPasswordError = '';
  String confirmPasswordCompare='';

  void _signUp(String? email, String? password) async {
    if (username.isEmpty) {
      setState(() {
        usernameError = 'Username is required.';
      });
      return;
    }

    if (fullName.isEmpty) {
      setState(() {
        fullNameError = 'Full Name is required.';
      });
      return;
    }

    if (email!.isEmpty ) {
      setState(() {
        emailError = 'Email is required.';
      });
      return;
    }

    if (password!.isEmpty) {
      setState(() {
        passwordError = 'Password is required.';
      });
      return;
    }

    if (confirmPassword.isEmpty) {
      setState(() {
        confirmPasswordError = 'Confirm Password is required.';
      });
      return;
    }
    if(password!=confirmPassword){
      setState(() {
        confirmPasswordCompare='password do not match';
      });
      return;
    }

    try {
     
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Inscription réussie, redirigez l'utilisateur vers la page RoomPage ou une autre page appropriée.
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const RoomPage();
      }));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        setState(() {
          passwordError = 'Le mot de passe est trop faible.';
        });
      } else if (e.code == 'email-already-in-use') {
        setState(() {
          emailError = 'L\'email est déjà utilisé par un autre compte.';
        });
      }
      else if(e.code == 'invalid-email'){
        setState(() {
    emailFormatError = 'The email address is badly formatted.';
  });
      }
    } catch (e) {
      setState(() {
        // Afficher une erreur générique
        // Vous pouvez personnaliser le message d'erreur en fonction de l'exception renvoyée
        emailError = 'Une erreur s\'est produite lors de l\'inscription.';
      });
    }
  }

Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

      // Inscription réussie, redirigez l'utilisateur vers la page RoomPage ou une autre page appropriée.
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const RoomPage();
      }));
    } catch (e) {
      print('Une erreur s\'est produite lors de l\'authentification avec Google: $e');
    }
  }
  
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
              style: TextStyle(
                color: Color.fromARGB(255, 128, 119, 119),
                // fontWeight: FontWeight.bold,
                fontFamily: "DancingScript",
                fontSize: 35,
              ),
            ),
            SizedBox(height: size.height *0.02),
           
            RoundedInputField(
              hintText: "Enter your Username",
              onChanged: (value) {
                setState(() {
                  username = value;
                  usernameError = '';
                });
              },
            ),
            Text(
              usernameError,
            
              style:const TextStyle(
                color: Colors.red,
              ),
            ),
              RoundedInputField(
              hintText: "Enter your Full Name",
              onChanged: (value) {
                setState(() {
                  fullName = value;
                  fullNameError = '';
                });
              },
            ),
            Text(
              fullNameError,
              style:const TextStyle(
                color: Colors.red,
              ),
            ),
            RoundedInputField(
              hintText: "Enter your Email",
              onChanged: (value) {
                setState(() {
                  email = value;
                  emailError = '';
                  emailFormatError = ''; 
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
Text(
              emailError,
              style:const TextStyle(
                color: Colors.red,
              ),
            ), Text(
  emailFormatError,
  style:const TextStyle(
    color: Colors.red,
  ),
),
              ]
            
            ),
            RoundedPasswordField(
              hintText: "Enter your Password",
              onChanged: (value) {
                setState(() {
                  password = value;
                  passwordError = '';
                });
              },
            ),
            Text(
              passwordError,
              style:const TextStyle(
                color: Colors.red,
              ),
            ),
            RoundedPasswordField(
              hintText: "Confirm Password",
              onChanged: (value) {
                setState(() {
                  confirmPassword = value;
                  confirmPasswordError = '';
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
Text(
              confirmPasswordError,
              style:const TextStyle(
                color: Colors.red,
              ),
            ),
             Text(
              confirmPasswordCompare,
              style:const TextStyle(
                color: Colors.red,
              ),
            ),
              ],
            )
            ,
            RoundedButton(
              press: () {
                _signUp(email, password);
              },
              text: "Sign Up",
            ),
            SizedBox(height: size.height *0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap:  _signInWithGoogle,
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