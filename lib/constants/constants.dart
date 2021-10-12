import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;
  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * 0.024
        : screenWidth! * 0.024;
  }
}

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace(this.value);
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value,
    );
  }
}

const kMainColor = Color(0xFF69A03A);

const kLogo = 'assets/images/logo.jpg';
