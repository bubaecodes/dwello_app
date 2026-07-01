import 'package:dwello_app/features/shop/screens/home/widgets/home_body/home_carousel.dart';
import 'package:dwello_app/features/shop/screens/home/widgets/home_body/home_carousel_dot.dart';
import 'package:dwello_app/features/shop/screens/home/widgets/home_body/home_recommendation_container.dart';
import 'package:dwello_app/features/shop/screens/listings/listings_screen.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});


  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///initial container
        // Container(
        //   width: 0.7.sw,
        //   height: 0.402.sh,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(23.r),
        //     color: isDark ? AppColors.darkBlue : AppColors.blueBg.withValues(alpha: 0.95),
        //   ),
        //   child: Column(
        //     children: [
        //       Align(
        //         alignment: AlignmentGeometry.topCenter,
        //         child: Container(
        //           width: 0.7.sw,
        //           height: 0.31.sh,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(23.r),
        //               topRight: Radius.circular(23.r),
        //             ),
        //             image: DecorationImage(
        //               image: AssetImage(AppImages.products33),
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //           child: Stack(
        //             children: [
        //               Positioned(
        //                 top: 22.h,
        //                 right: 21.w,
        //                 child: InkWell(
        //                   child: Container(
        //                     width: 38.w,
        //                     height: 38.h,
        //                     padding: EdgeInsets.all(8.sp),
        //                     decoration: BoxDecoration(
        //                       color: AppColors.lightGrey,
        //                       shape: BoxShape.circle,
        //                     ),
        //                     child: Center(
        //                       child: Icon(
        //                         Iconsax.heart,
        //                         size: 22.sp,
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //
        //               Positioned(
        //                 bottom: 6.h,
        //                 right: 12.w,
        //                 child: Container(
        //                   width: 250.w,
        //                   height: 60.h,
        //                   padding: EdgeInsets.all(8.sp),
        //                   decoration: BoxDecoration(
        //                     color: AppColors.blueBg.withValues(alpha: 0.2),
        //                     borderRadius: BorderRadius.circular(13.r),
        //                     border: Border.all(color: AppColors.blueBg, width: 0.7.w),
        //                   ),
        //                   child: Padding(
        //                     padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        //                     child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                           children: [
        //                             Text(
        //                               'Area',
        //                               style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
        //                                   .copyWith(color: AppColors.lightGrey, fontSize: 13.2.sp, fontWeight: FontWeight.w300),
        //                               textAlign: TextAlign.start,
        //                             ),
        //                             Text(
        //                               '2400.sqm',
        //                               style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
        //                                   .copyWith(color: AppColors.lightGrey, fontSize: 14.6.sp, fontWeight: FontWeight.w400),
        //                               textAlign: TextAlign.start,
        //                             ),
        //                           ],
        //                         ),
        //
        //                         Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                           children: [
        //                             Text(
        //                               'Rooms',
        //                               style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
        //                                   .copyWith(color: AppColors.lightGrey, fontSize: 13.2.sp, fontWeight: FontWeight.w300),
        //                               textAlign: TextAlign.start,
        //                             ),
        //                             Text(
        //                               '5',
        //                               style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
        //                                   .copyWith(color: AppColors.lightGrey, fontSize: 14.6.sp, fontWeight: FontWeight.w400),
        //                               textAlign: TextAlign.start,
        //                             ),
        //                           ],
        //                         ),
        //
        //                         Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                           children: [
        //                             Text(
        //                               'Parking Spots',
        //                               style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
        //                                   .copyWith(color: AppColors.lightGrey, fontSize: 13.2.sp, fontWeight: FontWeight.w300),
        //                               textAlign: TextAlign.start,
        //                             ),
        //                             Text(
        //                               '2 garage',
        //                               style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
        //                                   .copyWith(color: AppColors.lightGrey, fontSize: 14.6.sp, fontWeight: FontWeight.w400),
        //                               textAlign: TextAlign.start,
        //                             ),
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //
        //       Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
        //         child: Column(
        //           children: [
        //             Align(
        //               alignment: AlignmentGeometry.centerLeft,
        //               child: Text(
        //                 'Lakeside Luxury Home',
        //                 style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
        //                     .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.6) : AppColors.lightGrey, fontSize: 14.2.sp, fontWeight: FontWeight.w400),
        //                 textAlign: TextAlign.start,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //             ),
        //             SizedBox(height: 2.h,),
        //
        //             Row(
        //               children: [
        //                 Icon(
        //                   Icons.location_on_sharp, size: 14.sp,
        //                   color: isDark ? AppColors.blueBg : AppColors.homeLightGrey,
        //                 ),
        //                 SizedBox(width: 3.w,),
        //                 Text(
        //                   'Kebbi, Nigeria',
        //                   style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
        //                       .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.6) : AppColors.lightGrey, fontSize: 14.sp, fontWeight: FontWeight.w400),
        //                   textAlign: TextAlign.start,
        //                 ),
        //               ],
        //             ),
        //             SizedBox(height: 1.3.h,),
        //
        //             Align(
        //               alignment: Alignment.centerRight,
        //               child: Padding(
        //                 padding: EdgeInsets.symmetric(horizontal: 4.sp),
        //                 child: Text(
        //                   'N15,000,000',
        //                   style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
        //                       .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.6) : AppColors.lightGrey, fontSize: 18.sp, fontWeight: FontWeight.w600),
        //                   textAlign: TextAlign.start,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       )
        //     ],
        //   ),
        // ),

        const HomeCarousel(),
        SizedBox(height: 10.h,),

        HomeCarouselDot(),
        SizedBox(height: 15.h,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommendation',
              style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                  .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.9) : AppColors.blueBg,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
            ),

            InkWell(
              onTap: ()=>
                Get.to(
                  ()=> ListingsScreen(),
                  transition: Transition.zoom,
                  duration: const Duration(milliseconds: 350),
                ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 76.w,
                  height: 23.h,
                  padding: EdgeInsets.symmetric(vertical: 2.sp, horizontal: 7.sp),
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Listings',
                        style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                            .copyWith(color: AppColors.lighterGrey, fontSize: 13.sp, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.start,
                      ),
                      Icon(CupertinoIcons.right_chevron, color: AppColors.whiteBg, size: 14.sp,),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
        SizedBox(height: 14.h,),

        HomeRecommendationContainer(),
      ],
    );
  }
}


