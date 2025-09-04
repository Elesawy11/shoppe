import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/core/themes/app_color.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'core/routing/router.dart';
import 'core/utils/size_provider.dart';

void main(List<String> args) {
  runApp(DevicePreview(enabled: true, builder: (context) => const Shoppe()));
}

class Shoppe extends StatelessWidget {
  const Shoppe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeProvider(
      baseSize: const Size(375, 812),
      width: context.screenWidth,
      height: context.screenHeight,
      child: MaterialApp.router(
        theme: ThemeData(scaffoldBackgroundColor: AppColor.white),
        builder: (context, child) {
          return MediaQuery(data: MediaQuery.of(context), child: child!);
        },

        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
