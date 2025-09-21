import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

extension AppPadding on BuildContext {
  double get horizontalPadding => screenWidth * 0.05;
  double get verticalPadding => screenHeight * 0.02;
}
