import 'package:flutter/material.dart';

class onboardingsecond extends StatefulWidget {
  const onboardingsecond({super.key});

  @override
  State<onboardingsecond> createState() => _onboardingsecondState();
}

class _onboardingsecondState extends State<onboardingsecond> {
  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset("assets/img3.png",width: 500,height: 235,),
        SizedBox(height: 40,),
        Text("Real-time Heart Monitoring",style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text("Keep an eye on your heart rate with AI-powered insights. Detect irregularities early and \nstay informed about your heart health.",
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