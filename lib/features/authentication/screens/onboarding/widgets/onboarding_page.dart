import 'package:dwello_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.image, required this.title, required this.subtitle});

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    // return Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 4.w),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       /// img
    //       Flexible(
    //         flex: 6,
    //         child: Image.asset(
    //           image,
    //           fit: BoxFit.contain,
    //         ),
    //       ),
    //
    //       /// dots
    //       SizedBox(height: 45.h,),
    //       OnboardingDotNavigation(),
    //       SizedBox(height: 30.h,),
    //
    //       /// header text
    //       Row(
    //         children: [
    //           Expanded(
    //             child: Text(
    //               title,
    //               style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
    //                   .copyWith(color: isDark ? AppColors.homeLightGrey : AppColors.black, fontSize: 32.sp, fontWeight: FontWeight.w600),
    //               textAlign: TextAlign.start,
    //               maxLines: 2,
    //               softWrap: true,
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(height: 20.h,),
    //
    //       /// sub header text
    //       Row(
    //         children: [
    //           Expanded(
    //             child: Text(
    //               subtitle,
    //               style: (Theme.of(context).textTheme.bodyMedium ?? const TextStyle())
    //                   .copyWith(color: isDark ? AppColors.lightGreyText : AppColors.grey, fontSize: 14.sp, fontWeight: FontWeight.w500),
    //               textAlign: TextAlign.start,
    //               maxLines: 2,
    //               softWrap: true,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// header text
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                      .copyWith(color: isDark ? AppColors.homeLightGrey : AppColors.black, fontSize: 32.sp, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  softWrap: true,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h,),

          /// sub header text
          Row(
            children: [
              Expanded(
                child: Text(
                  subtitle,
                  style: (Theme.of(context).textTheme.bodyMedium ?? const TextStyle())
                      .copyWith(color: isDark ? AppColors.lightGreyText : AppColors.grey, fontSize: 14.sp, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  softWrap: true,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h,),

          /// img
          Flexible(
            flex: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),

          /// dots
          SizedBox(height: 45.h,),
          OnboardingDotNavigation(),
        ],
      ),
    );
  }
}