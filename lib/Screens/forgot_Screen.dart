import 'package:flutter/material.dart';
import 'package:groceries_app/Widget/Elevated_Button.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backScreen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop((context));
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Image(image: AssetImage("assets/images/colorcarote.png")),
              SizedBox(height: 100),
              Text(
                "Forgot Password",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              SizedBox(height: 14),

              Text(
                "Enter the phone number associated with \nyour account and we’ll send you OTP to reset \nyour password",
                style: TextStyle(color: Colors.grey, fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "E-mail",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your e-mail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14)
                  )
                ),
              ),
              SizedBox(height: 30),
              CustomButton(text: "Confirm", onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}
