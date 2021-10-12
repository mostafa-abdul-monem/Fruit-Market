import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/constants/constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key, @required this.dotIndex}) : super(key: key);
  final double? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        activeColor: kMainColor,
      ),
      dotsCount: 3,
      position: dotIndex!,
    );
  }
}
