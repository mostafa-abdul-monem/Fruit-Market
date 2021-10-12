import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/Auth/widgets/login_view/widgets/login_view.dart';
import 'package:flutter_fruit_market/constants/constants.dart';
import 'package:flutter_fruit_market/constants/custom_buttons.dart';
import 'package:flutter_fruit_market/onBoarding/widgets/custom_indicator.dart';
import 'package:flutter_fruit_market/onBoarding/widgets/custom_welcome_view.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  _OnboardingBodyState createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomWelcomeView(
          pageController: pageController,
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 22,
          left: 0,
          right: 0,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 35.0,
            child: Text(
              'SKIP',
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
        ),
        Positioned(
            bottom: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() => LoginView(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 500));
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'GET STARTED' : 'NEXT')
                  : 'NEXT',
            )),
      ],
    );
  }
}
