import 'package:dwello_app/features/authentication/controllers/login/login_bg_controller.dart';
import 'package:dwello_app/features/authentication/controllers/splash/splash_controller.dart';
import 'package:dwello_app/features/authentication/screens/login/widgets/login_bg_container.dart';
import 'package:dwello_app/features/home/home_screen.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    final bgController = Get.put(LoginBgController());
    final footerController = SplashController.instance;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.sp, horizontal: 12.sp),
        // child: Column(
        //   children: [
        //     SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         children: [
        //           LoginBgContainer(img: AppImages.products8),
        //           LoginBgContainer(img: AppImages.products2),
        //           LoginBgContainer(img: AppImages.products3),
        //           LoginBgContainer(img: AppImages.products1),
        //           LoginBgContainer(img: AppImages.products19),
        //           LoginBgContainer(img: AppImages.products6),
        //           LoginBgContainer(img: AppImages.products11),
        //           LoginBgContainer(img: AppImages.products18),
        //           LoginBgContainer(img: AppImages.products5),
        //           LoginBgContainer(img: AppImages.products5),
        //         ],
        //       ),
        //     ),
        //     SizedBox(height: 10.sp,),
        //     SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           LoginBgContainer(img: AppImages.products18),
        //           LoginBgContainer(img: AppImages.products9),
        //           LoginBgContainer(img: AppImages.products17),
        //           LoginBgContainer(img: AppImages.products13),
        //           LoginBgContainer(img: AppImages.products5),
        //           LoginBgContainer(img: AppImages.products9),
        //           LoginBgContainer(img: AppImages.products8),
        //           LoginBgContainer(img: AppImages.products14),
        //           LoginBgContainer(img: AppImages.products15),
        //           LoginBgContainer(img: AppImages.products7),
        //         ],
        //       ),
        //     ),
        //     SizedBox(height: 10.sp,),
        //   ],
        // ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              top: 0,
              child: SizedBox(
                height: 210.h,
                child: ListView.builder(
                  controller: bgController.topController,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 500,
                  itemBuilder: (_, index) {
                    final images = [
                      AppImages.products8,
                      AppImages.products2,
                      AppImages.products3,
                      AppImages.products15,
                      AppImages.products1,
                      AppImages.products19,
                      AppImages.products6,
                      AppImages.products11,
                      AppImages.products18,
                      AppImages.products5,
                      AppImages.products14,
                    ];

                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: LoginBgContainer(
                        img: images[index % images.length],
                      ),
                    );
                  },
                ),
              ),
            ),

            Positioned(
              top: 220.h,
              left: 0,
              right: 0,
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: const [
                      Colors.white,
                      Colors.white,
                      Colors.transparent,
                    ],
                    stops: const [
                      0.0,
                      0.80,
                      1.0,
                    ],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstIn,
                child: SizedBox(
                  height: 210.h,
                  child: ListView.builder(
                    controller: bgController.bottomController,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 500,
                    itemBuilder: (_, index) {
                      final images = [
                        AppImages.products18,
                        AppImages.products9,
                        AppImages.products17,
                        AppImages.products13,
                        AppImages.products5,
                        AppImages.products14,
                        AppImages.products21,
                        AppImages.products9,
                        AppImages.products8,
                        AppImages.products15,
                        AppImages.products7,
                      ];

                      return Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: LoginBgContainer(
                          img: images[index % images.length],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 1.h,
              left: 14.w,
              right: 14.w,
              child: Column(
                children: [
                  Text(
                    'Dwell with Dwello',
                    style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                        .copyWith(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg, fontSize: 32.sp, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Find. Invest. Chill',
                    style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                        .copyWith(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg, fontSize: 30.sp, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10.h,),
                  Text(
                    'Buy, sell, and invest in properties, seamlessly.',
                    style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                        .copyWith(color: isDark ? AppColors.lightGreyText : AppColors.grey, fontSize: 14.3.sp, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    softWrap: true,
                  ),
                  SizedBox(height: 33.h,),

                  InkWell(
                    onTap: () {
                      bgController.stop();
                      Get.to(() => const HomeScreen()); /// use a bottom modal sheet for the login and signup
                    },
                    child: Container(
                      height: 56.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
                        border: Border.all(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Center(
                        child: Text(
                          'Sign up for Dwello',
                          style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                              .copyWith(color: isDark ? AppColors.blueBg : AppColors.homeLightGrey, fontSize: 14.7.sp, fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h,),

                  InkWell(
                    onTap: () {
                      bgController.stop();
                      Get.to(() => const HomeScreen());
                    },
                    child: Container(
                      height: 56.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
                        border: Border.all(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg, width: 0.7.h),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Center(
                        child: Text(
                          'I already have an account',
                          style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                              .copyWith(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg, fontSize: 14.7.sp, fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 85.h,),

                  Text(
                    'DWELLO',
                    style: TextStyle(
                      fontFamily: 'Bricolage Grotesque',
                      fontSize: 12.sp,
                      letterSpacing: 3.sp,
                      fontWeight: FontWeight.w700,
                      color: isDark ? Colors.white : AppColors.blueBg,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
