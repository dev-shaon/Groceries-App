import 'dart:async';

import 'package:flutter/material.dart';
import 'package:groceries_app/Screens/Onbording_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnbordingScreen(),));
    },);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Image(image: AssetImage("assets/images/fristPhoto.png")),
        ),
      ),
    );
  }
}