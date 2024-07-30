import 'package:flutter/material.dart';

class DecorationConstants {
  static BoxDecoration whiteContainer = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
      boxShadow: [
        BoxShadow(color: Colors.grey.shade200, blurRadius: 15, spreadRadius: 1)
      ]);
}
