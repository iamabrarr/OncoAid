import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';

class TextStyleConstants {
  static TextStyle headingNormal = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2.2,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: Colors.black);
  static TextStyle headingMedium = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2.6,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: Colors.black);
  static TextStyle headingLarge = TextStyle(
      fontSize: SizeConfig.textMultiplier * 3.2,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: Colors.black);
  static TextStyle subtitle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 1.6,
      fontFamily: 'Poppins',
      color: Colors.grey.shade600);
  static TextStyle buttonText = TextStyle(
      fontSize: SizeConfig.textMultiplier * 1.8,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500);
  static TextStyle bodyTextSmall = TextStyle(
      fontSize: SizeConfig.textMultiplier * 1.6,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500);
}
