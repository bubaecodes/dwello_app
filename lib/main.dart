import 'package:dwello_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
Size _getDesignSize() {
  final width =
      WidgetsBinding
          .instance
          .platformDispatcher
          .views
          .first
          .physicalSize
          .width /
          WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;
  return width >= 600 ? const Size(768, 1024) : const Size(393, 852);
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: _getDesignSize(),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Dwello App',
          theme: DwelloAppTheme.lightTheme,
          darkTheme: DwelloAppTheme.darkTheme,
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
    );
  }
}

