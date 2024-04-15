import 'package:flutter/material.dart';

import '../../utils/app_style.dart';

class ViewAllText extends StatelessWidget {
  const ViewAllText({super.key, required this.onTap, required this.text});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            "View All",
            style: Styles.textStyle.copyWith(color: primary),
          ),
        )
      ],
    );
  }
}
