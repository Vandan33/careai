import 'package:flutter/material.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/img1.png",width: 500,height: 250,),
        SizedBox(height: 40,),
        Text("Welcome to CareAI",style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text("Your smart companion for heart health and daily activity tracking. Stay in tune with your body — effortlessly",
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontSize: 15,
            fontWeight: FontWeight.w400
          ),
          textAlign: TextAlign.center,),
        )
      ],
    );
  }
}