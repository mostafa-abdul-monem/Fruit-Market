import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.inputType,
      this.suffexIcon,
      this.onSaved,
      this.onChnged,
      this.maxLines})
      : super(key: key);
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChnged;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChnged,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)))),
    );
  }
}
