import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

/// 🎨 Global Text Styles
extension Styles on BuildContext {
  TextStyle get title =>
      TextStyle(fontSize: setSp(24), fontWeight: FontWeight.bold);

  TextStyle get subtitle =>
      TextStyle(fontSize: setSp(20), fontWeight: FontWeight.w600);
  TextStyle get homeBody =>
      TextStyle(fontSize: setSp(18), fontWeight: FontWeight.w700);
  TextStyle get body =>
      TextStyle(fontSize: setSp(16), fontWeight: FontWeight.normal);
      TextStyle get bodyBold =>
      TextStyle(fontSize: setSp(16), fontWeight: FontWeight.bold);

  TextStyle get small =>
      TextStyle(fontSize: setSp(14), fontWeight: FontWeight.normal);

  TextStyle get button =>
      TextStyle(fontSize: setSp(18), fontWeight: FontWeight.w600);

  TextStyle get error =>
      TextStyle(fontSize: setSp(16), fontWeight: FontWeight.bold);

  TextStyle get success =>
      TextStyle(fontSize: setSp(16), fontWeight: FontWeight.bold);
      TextStyle get notifiNumber =>
      TextStyle(fontSize: setSp(10), fontWeight: FontWeight.normal);
}
