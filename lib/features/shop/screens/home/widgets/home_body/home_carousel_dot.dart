import 'package:dwello_app/features/shop/controllers/home/home_carousel_controller.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeCarouselDot extends StatelessWidget {
  const HomeCarouselDot({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeCarouselController.instance;
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          controller.properties.length,
            (index) {

            final isActive =
                index == controller.currentIndex.value;

            return AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut,

              margin: EdgeInsets.symmetric(horizontal: 1.8.w),

              width: isActive ? 11.w : 4.2.w,

              height: isActive ? 5.2.h : 4.h,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),

                color: isActive
                    ? isDark ? AppColors.whiteBg : AppColors.blueBg
                    : isDark ? AppColors.grey : Colors.grey.shade400,
              ),
            );
          },
        ),
      ),
    );
  }
}
