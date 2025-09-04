import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

extension AppPadding on BuildContext {
  double get horizontalPadding => getWidth * 0.05;
  double get verticalPadding => getHeight * 0.02;
}
