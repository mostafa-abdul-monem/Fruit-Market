import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/onBoarding/widgets/custom_welcome_view_item.dart';

class CustomWelcomeView extends StatelessWidget {
  const CustomWelcomeView({Key? key, @required this.pageController})
      : super(key: key);
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        CustomWelcomeViewItem(
            title: 'E Shopping',
            subTitle: 'Enjoy our fresh & organic products',
            image: 'assets/images/1.jpg'),
        CustomWelcomeViewItem(
            title: 'Delivery 24 hours',
            subTitle: 'Get your order immediatly',
            image: 'assets/images/2.jpg'),
        CustomWelcomeViewItem(
            title: 'Covers all the country',
            subTitle: 'Order where you are!',
            image: 'assets/images/3.jpg'),
      ],
    );
  }
}
