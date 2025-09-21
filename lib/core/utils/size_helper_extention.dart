import 'dart:math';
import 'package:flutter/material.dart';
import 'size_provider.dart';

extension SizeHelperExtention on BuildContext {
  // double get getWidth => MediaQuery.of(this).size.width;
  // double get getHeight => MediaQuery.of(this).size.height;
  // Check if the device is in landscape mode and update the layout accordingly
  bool get isLandScape =>
      MediaQuery.of(this).orientation == Orientation.landscape;
  double get screenWidth => isLandScape
      ? MediaQuery.of(this).size.height
      : MediaQuery.of(this).size.width;
  double get screenHeight => isLandScape
      ? MediaQuery.of(this).size.width
      : MediaQuery.of(this).size.height;
  // Get the size provider for the current context
  SizeProvider get sizeProvider => SizeProvider.of(this);
  // Get the scale factors for width and height
  double get scaleWidth => sizeProvider.width / sizeProvider.baseSize.width;
  double get scaleHeight => sizeProvider.height / sizeProvider.baseSize.height;

  double setWidth(num w) {
    return w * scaleWidth;
  }

  double setHeight(num h) {
    return h * scaleHeight;
  }

  double setSp(num fontSize) {
    return fontSize * scaleWidth;
  }

  double setMinSize(num size) {
    return size * min(scaleWidth, scaleHeight);
  }
}
