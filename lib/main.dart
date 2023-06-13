
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:hotelio/screen/main/main_screen.dart';
import 'package:hotelio/screens/welcome_screen.dart';
//import 'package:hotelio/screens/welcome_screen.dart';
import 'constants.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}
//web
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   /* return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Admin Panel",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Colors.black),
        canvasColor: kPrimaryColor,
      ),
      home:const MainScreen(),
    );*/

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
    //  colorScheme: ColorScheme.fromSeed(primarySwatch: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
     //home:const MainScreen() ,
    );
  }
}
