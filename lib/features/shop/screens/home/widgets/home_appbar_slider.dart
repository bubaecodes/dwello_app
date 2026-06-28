import 'package:dwello_app/features/shop/controllers/home/home_appbar_slider_controller.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeAppbarSlider extends StatelessWidget {
  const HomeAppbarSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeAppbarSliderController());
    final isDark = AppHelperFunctions.isDarkMode(context);
    const animationDuration = Duration(milliseconds: 250);

    return Container(
      width: double.infinity,
      height: 54.3.h,
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: isDark ? AppColors.lightBlue : AppColors.lightGrey,
        borderRadius: BorderRadius.circular(13.r),
      ),
      child: Obx(() {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: controller.optionTexts.length * 100.w,
            height: 41.h,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: animationDuration,
                  curve: Curves.easeInOut,
                  left: controller.selectedOption.value * 100.w,
                  top: 0,
                  child: Container(
                    width: 100.w,
                    height: 41.h,
                    decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),

                Row(
                  children: List.generate(
                    controller.optionTexts.length,
                        (index) {
                      final isSelected =
                          controller.selectedOption.value == index;

                      return GestureDetector(
                        onTap: () {
                          controller.selectedOption.value = index;
                        },
                        child: SizedBox(
                          width: 100.w,
                          height: 45.h,
                          child: Center(
                            child: AnimatedDefaultTextStyle(
                              duration: animationDuration,
                              style: (Theme.of(context)
                                  .textTheme
                                  .headlineLarge ??
                                  const TextStyle())
                                  .copyWith(
                                color: isSelected
                                    ? AppColors.white
                                    : (isDark
                                    ? AppColors.whiteBg
                                    : AppColors.grey),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              child: Text(
                                controller.optionTexts[index],
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}