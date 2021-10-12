import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/constants/constants.dart';
import 'package:flutter_fruit_market/onBoarding/onBoarding_view.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  //animation start
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(microseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);
    //animation end here

    goToNextView();
  }

  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        child: Column(
      children: [
        Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: Text(
            'Fruit Market',
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Spacer(),
        Image.asset(
          'assets/images/splashfruit.png',
        ),
      ],
    ));
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => OnBoardingView(), transition: Transition.fade);
    });
  }
}
