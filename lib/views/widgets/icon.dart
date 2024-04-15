import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomIcon extends StatelessWidget {
  CustomIcon({super.key, required this.color, required this.icon});

  Widget icon;

  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      // padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: color,
      ),
      child: icon,
    );
  }
}
