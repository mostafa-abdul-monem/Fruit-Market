import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/Auth/widgets/complete_information/widgets/complete_information_item.dart';
import 'package:flutter_fruit_market/constants/constants.dart';
import 'package:flutter_fruit_market/constants/custom_buttons.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          VerticalSpace(8),
          CompleteInfoItem(text: 'Enter Your Name'),
          VerticalSpace(2),
          CompleteInfoItem(
            text: 'Enter Phone Number',
            inputType: TextInputType.number,
          ),
          VerticalSpace(2),
          CompleteInfoItem(
            text: 'Enter Your Address',
            maxLines: 4,
          ),
          VerticalSpace(4),
          CustomGeneralButton(
            text: 'LOGIN',
          )
        ],
      ),
    );
  }
}
