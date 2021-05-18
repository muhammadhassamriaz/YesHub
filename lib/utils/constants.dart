import 'package:flutter/material.dart';

class Constants {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double kDefaultSize;
  static double labelTextSize;
  static double headingTextSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    kDefaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.01
        : screenWidth * 0.01;
    labelTextSize = kDefaultSize * 4;
    headingTextSize = kDefaultSize * 7;
  }
}
