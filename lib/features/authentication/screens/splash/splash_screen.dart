import 'package:dwello_app/features/authentication/controllers/splash/splash_controller.dart';
import 'package:dwello_app/features/authentication/controllers/splash/zoom_controller.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashController());
    final zoomController = Get.put(ZoomController());
    final isDark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(isDark ? AppImages.splashBg : AppImages.splashLightBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Obx(
              ()=> Stack(
                children: [
                  Positioned(
                    top: 0.3.sh,
                    left: 0.36.sw,
                    child: AnimatedScale(
                      scale: zoomController.scale.value,
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeInOut,
                      child: Image.asset(
                        AppImages.appLogo,
                        width: 125.w,
                        height: 125.h,
                      ),
                    ),
                  ),

                  AnimatedPositioned(
                    right: controller.animate.value ? 0.29.sw : 5.w,
                    bottom: 0.48.sh,
                    duration: Duration(milliseconds: 2500),
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 2500),
                      opacity: controller.animate.value ? 1 : 0,
                      child: Text(
                        'DWELLO',
                        style: TextStyle(
                          fontFamily: 'Bricolage Grotesque',
                          fontSize: 35.sp,
                          letterSpacing: 4.sp,
                          fontWeight: FontWeight.w700,
                          color: isDark ? Colors.white : AppColors.blueBg,
                        ),
                      ),
                    ),
                  ),

                  AnimatedPositioned(
                    right: controller.animate.value ? 0.34.sw : 5.w,
                    bottom: 0.45.sh,
                    duration: Duration(milliseconds: 2500),
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 2500),
                      opacity: controller.animate.value ? 1 : 0,
                      child: Column(
                        children: [
                          Text(
                            'REAL ESTATE',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: isDark ? AppColors.yellowBg : Colors.yellow[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  AnimatedPositioned(
                    duration: Duration(milliseconds: 2500),
                    left: 0.33.sw,
                    bottom: controller.animate.value ? 0.1.sh : -50.h,
                    child: Text(
                      'FIND. BUY. LIVE.',
                      style: TextStyle(
                        fontFamily: 'Bricolage Grotesque',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: isDark ? AppColors.homeLightGrey : AppColors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
