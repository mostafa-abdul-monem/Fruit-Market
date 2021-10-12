import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/constants/constants.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, this.text, this.onTap})
      : super(key: key);
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: kMainColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}

class CustomButtonIcon extends StatelessWidget {
  const CustomButtonIcon(
      {Key? key, required this.text, this.iconData, this.onTap, this.color})
      : super(key: key);
  final String text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: SizeConfig.screenHeight,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: Colors.grey.withOpacity(0.5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            HorizontalSpace(2),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
