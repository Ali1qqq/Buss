import 'package:flutter/material.dart';

import '../../../utils/app_style.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.label,
    required this.hint,
    required this.textInputType,
    required this.maxLength,
  });

  final String label, hint;
  final TextInputType textInputType;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Styles.blueColor)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Styles.orangeColor)),
        border: const UnderlineInputBorder(),
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: Styles.textStyle,
        hintText: hint,
        hintStyle: Styles.headLineStyle4,
      ),
      keyboardType: textInputType,
      clipBehavior: Clip.none,
      style: Styles.textStyle,
      maxLength: maxLength,
    );
  }
}
