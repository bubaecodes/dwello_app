import 'package:dwello_app/features/shop/screens/home/widgets/home_appbar_slider.dart';
import 'package:dwello_app/features/shop/screens/home/widgets/home_body/home_body.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: isDark ? AppColors.blueBg : AppColors.whiteBg,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        image: DecorationImage(
                          image: AssetImage('assets/images/home/header/home_profile.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(width: 12.w,),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good morning!',
                            style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.6) : AppColors.grey, fontSize: 14.3.sp, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                          
                          Text(
                            'Kamara Odo',
                            style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                .copyWith(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg, fontSize: 18.sp, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.w,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_sharp, size: 16.4.sp,
                              color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
                            ),
                            SizedBox(width: 2.sp,),
                            Text(
                              'Location',
                              style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                  .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.6) : AppColors.grey, fontSize: 14.2.sp, fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),


                        Text(
                          'Enugu, Nigeria',
                          style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                              .copyWith(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg, fontSize: 16.sp, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16.h,),

                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50.h,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(width: 10.w),
                                Icon(Iconsax.search_normal, size: 18, color: AppColors.black.withValues(alpha: 0.6)),
                                SizedBox(width: 6.w),
                                Text(
                                  'Search properties...',
                                  style: (Theme.of(context).textTheme.headlineLarge ??
                                      const TextStyle())
                                      .copyWith(
                                    color: AppColors.black.withValues(alpha: 0.6),
                                    fontSize: 14.3.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            filled: true,
                            fillColor: AppColors.homeLightGrey,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.w),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      width: 50.h,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.r),
                        color: AppColors.homeLightGrey,
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(CupertinoIcons.slider_horizontal_3, color: AppColors.black.withValues(alpha: 0.6)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h,),

                HomeAppbarSlider(),
                SizedBox(height: 10.h),

                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Container(
                    width: 66.w,
                    height: 22.h,
                    padding: EdgeInsets.all(2.sp),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.flame_fill, color: AppColors.whiteBg, size: 15.sp,),
                        SizedBox(width: 2.sp,),
                        Text(
                          'Deals',
                          style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                              .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.6) : AppColors.lightGrey, fontSize: 13.sp, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),

                HomeBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
