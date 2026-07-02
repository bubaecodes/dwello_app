import 'package:dwello_app/features/shop/screens/home/widgets/home_appbar_slider.dart';
import 'package:dwello_app/features/shop/screens/listings/widgets/listings_card_container.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ListingsScreen extends StatelessWidget {
  const ListingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: isDark ? AppColors.blueBg : AppColors.whiteBg,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: ()=> Get.back(),
                          child: Icon(CupertinoIcons.back, size: 24.sp, color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,),
                        ),
                        SizedBox(width: 10.w,),

                        Row(
                          children: [
                            Image.asset(
                              AppImages.appLogo,
                              width: 42.w,
                              height: 42.h,
                              color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
                            ),
                            Text(
                              'Discover',
                              style: TextStyle(
                                fontFamily: 'Bricolage Grotesque',
                                fontSize: 29.sp,
                                letterSpacing: 0.7.sp,
                                fontWeight: FontWeight.w600,
                                color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    InkWell(
                      onTap: (){},
                      child: Align(
                        alignment: AlignmentGeometry.center,
                        child: Container(
                          width: 45.w,
                          height: 45.h,
                          padding: EdgeInsets.all(8.sp),
                          decoration: BoxDecoration(
                            color: isDark ? AppColors.lightBlue.withValues(alpha: 0.9) : AppColors.lightGrey,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.notifications_none_rounded,
                              size: 27.sp,
                              color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14.h,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 0.3.sw),
                      child: Text(
                        'Find exceptional DWELLO properties for smart investments.',
                        style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                            .copyWith(color: isDark ? AppColors.lightGreyText : AppColors.grey, fontSize: 14.sp, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),

                HomeAppbarSlider(),
                SizedBox(height: 10.h),

                ListingsCardContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
