import 'package:careai/login.dart';
import 'package:careai/onboarding.dart';
import 'package:careai/onboardingsecond.dart';
import 'package:careai/onboardingthird.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class suggestion extends StatefulWidget {
  const suggestion({super.key});

  @override
  State<suggestion> createState() => _suggestionState();
}

class _suggestionState extends State<suggestion> {
  PageController pagecontroller = PageController();
  String buttontext = "Skip";
  int currentpageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pagecontroller,
            onPageChanged: (index) {
              currentpageindex = index;
              if (index == 2) {
                buttontext = "Finish";
              } else {
                buttontext = "Skip";
              }
              setState(() {});
            },
            children: [
              onboarding(),
              onboardingsecond(),
              onboardingthird(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 660),
            child: Container(
              alignment: Alignment(0, 0.9), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0), 
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                      },
                      child: Container(
                        width: 60,
                        alignment: Alignment.centerLeft,
                        child: Text(buttontext,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),),
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: pagecontroller,
                    count: 3,
                    effect: const WormEffect(
                      dotHeight: 10.0,
                      dotWidth: 10.0,
                      activeDotColor: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0), 
                    child: currentpageindex == 2
                        ? const SizedBox(width: 60)
                        : GestureDetector(
                            onTap: () {
                              pagecontroller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            child: Container(
                              width: 60,
                              alignment: Alignment.centerRight,
                              child: const Text("Next",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}