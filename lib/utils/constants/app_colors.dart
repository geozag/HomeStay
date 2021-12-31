// abstract colors
import 'package:flutter/material.dart';

abstract class AppColors {
  // field
  static const Color _whiteColor = Colors.white;
  static const Color _blackColor = Colors.black;
  static const Color _purpleColor = Color(0xFF5843BE);
  static const Color _greyColor = Color(0xFF82868E);

  // getter method
  Color get whiteColor => _whiteColor;
  Color get blackColor => _blackColor;
  Color get purpleColor => _purpleColor;
  Color get greyColor => _greyColor;
}
