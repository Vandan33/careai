import 'package:flutter/material.dart';

class onboardingthird extends StatefulWidget {
  const onboardingthird({super.key});

  @override
  State<onboardingthird> createState() => _onboardingthirdState();
}

class _onboardingthirdState extends State<onboardingthird> {
  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset("assets/img2.png",width: 500,height: 235,),
        SizedBox(height: 40,),
        Text("Step Tracking Made Simple",style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text("Monitor your daily steps and set activity goals. \nCareAI helps you stay active and motivated \n— every day.",
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