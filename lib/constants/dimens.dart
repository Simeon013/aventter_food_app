import 'package:flutter/cupertino.dart';

class AppDimens {

  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static const double paddingHorizontal = 20;
  static const double verticalPadding = 10;
  static const double borderRadius = 10;
}