import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/onBoarding/onBoarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBody(),
    );
  }
}
