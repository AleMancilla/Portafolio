import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double width;
  final double heigth;
  final Color color;

  const CustomDivider(
      {this.width = 100, this.heigth = 2, this.color = Colors.cyan});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
