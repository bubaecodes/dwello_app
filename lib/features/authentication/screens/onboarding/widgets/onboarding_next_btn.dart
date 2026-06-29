import 'package:dwello_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final isDark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
      left: 5.w,
      right: 5.w,
      bottom: 35.h,
      child: SizedBox(
        height: 0.075.sh,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => controller.nextPage(),
          style: ElevatedButton.styleFrom(
            backgroundColor: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(33),
              side: BorderSide(color: AppColors.blueBg),
            ),
          ),
          child: Obx(() => Text(
            controller.currentPageIndex < 2 ? 'Next' : 'Login',
            style: (Theme.of(context).textTheme.labelSmall ?? const TextStyle())
                .copyWith(color: isDark ? AppColors.blueBg : AppColors.white, fontSize: 16.sp, fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}