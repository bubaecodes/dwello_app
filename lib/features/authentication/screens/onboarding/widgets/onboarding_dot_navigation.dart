import 'package:dwello_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmoothPageIndicator(
            controller: controller.pageController,
            count: 3,
            onDotClicked: controller.dotNavigationClick,
            effect: ExpandingDotsEffect(
              activeDotColor: isDark ? AppColors.lightGrey : AppColors.blueBg,
              dotHeight: 8,
            ),
          ),
        ],
      ),
    );
  }
}