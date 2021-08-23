import 'package:flutter/material.dart';

// Get the height, proportionally to screen height
double getScreenPropotionHeight(double actualHeight, Size size) {
  // 812 is the artboard height that designer use
  return (actualHeight / 812.0) * size.height;
}

// Get the width, proportionally to screen width
double getScreenPropotionWidth(double actualWidth, Size size) {
  // 375 is the artboard width that designer use
  
  return (actualWidth / 375.0) * size.width;
}