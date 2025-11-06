import 'package:flutter/material.dart';
import 'package:groceries_app/Screens/LogIn_Screen.dart';
import 'package:groceries_app/Widget/Elevated_Button.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/man.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 500),
            Image(image: AssetImage("assets/images/carot.png")),
            SizedBox(height: 6),
            Text(
              "Welcome \nto our store",
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Ger your groceries in as fast as one hour",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
           SizedBox(height: 20,),
           CustomButton(
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
           }, text: 'Get Started',)
          ],
        ),
      ),
    );
  }
}
