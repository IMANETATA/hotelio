
import 'package:flutter/material.dart';
import 'package:hotelio/screens/welcome_screen.dart';
import 'constants.dart';
void main() {
  runApp(const MyApp());
}
//web
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
