import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/constants/constants.dart';
import 'package:flutter_fruit_market/constants/custom_text_field.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem(
      {Key? key, required this.text, this.inputType, this.maxLines})
      : super(key: key);
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        VerticalSpace(2),
        CustomTextField(
          maxLines: maxLines,
          inputType: inputType,
        )
      ],
    );
  }
}
