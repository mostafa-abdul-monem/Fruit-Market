import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/Auth/widgets/complete_information/widgets/complete_information_body.dart';
import 'package:flutter_fruit_market/constants/constants.dart';
import 'package:flutter_fruit_market/constants/custom_buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(10),
        SizedBox(
          child: Image.asset(kLogo),
          height: SizeConfig.defaultSize! * 18,
        ),
        Text(
          'Fruit Market',
          style: TextStyle(
              color: kMainColor, fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonIcon(
                  text: 'LOGIN WITH',
                  color: Colors.white,
                  iconData: FontAwesomeIcons.googlePlusG,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonIcon(
                  onTap: () {
                    Get.to(() => CompleteInformationBody(),
                        duration: Duration(milliseconds: 400),
                        transition: Transition.rightToLeft);
                  },
                  text: 'LOGIN WITH',
                  color: Colors.white,
                  iconData: FontAwesomeIcons.facebookF,
                ),
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
