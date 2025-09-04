import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

extension Spacer on BuildContext {
  SizedBox verticalSpace(double height) => SizedBox(height: setHeight(height));
  SizedBox horizontalSpace(double width) => SizedBox(width: setWidth(width));
}
