import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.backgroundColor,
    required this.text,
    required this.width,
    required this.height,
    required this.textColor,
    this.textSize = 12,
    this.onTap,
    this.isLoading = false,
  });
  final bool isLoading;
  Color backgroundColor;
  Color textColor;
  String text;
  double width;
  double height;
  double textSize;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(color: Colors.black))
              : Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: textSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
