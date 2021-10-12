import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/constants/constants.dart';

class CustomWelcomeViewItem extends StatelessWidget {
  CustomWelcomeViewItem(
      {Key? key,
      @required this.title,
      @required this.subTitle,
      @required this.image})
      : super(key: key);

  String? title;
  String? subTitle;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(20),
        SizedBox(
            height: SizeConfig.defaultSize! * 18, child: Image.asset(image!)),
        const VerticalSpace(2.5),
        Text(
          title!,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const VerticalSpace(1.2),
        Text(
          subTitle!,
          style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
        )
      ],
    );
  }
}
