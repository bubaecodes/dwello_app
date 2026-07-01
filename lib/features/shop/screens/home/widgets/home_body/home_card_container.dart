import 'package:dwello_app/features/shop/controllers/home/home_carousel_controller.dart';
import 'package:dwello_app/features/shop/models/home/home_carousel_model.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeCardContainer extends StatelessWidget {
  const HomeCardContainer({super.key, required this.property, required this.isActive});

  final HomeCarouselModel property;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    final controller = HomeCarouselController.instance;

    return Center(
      child: Padding(
        padding: EdgeInsets.only(right: 8.w),
        child: Container(
          width: 0.7.sw,
          height: 0.402.sh,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23.r),
            color: isDark
                ? AppColors.darkBlue.withValues(alpha: 0.8)
                : AppColors.blueBg.withValues(alpha: 0.95),
          ),

          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.topCenter,
                child: Container(
                  width: 0.7.sw,
                  height: 0.31.sh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(23.r),
                      topRight: Radius.circular(23.r),
                    ),
                    image: DecorationImage(
                      image: AssetImage(property.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 22.h,
                        right: 21.w,
                        child: Obx(
                          ()=> InkWell(
                            onTap: controller.favorite,
                            child: Container(
                              width: 38.w,
                              height: 38.h,
                              padding: EdgeInsets.all(8.sp),
                              decoration: BoxDecoration(
                                color: AppColors.lightGrey,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  controller.isFav.value ? CupertinoIcons.heart_fill : Iconsax.heart,
                                  size: controller.isFav.value ? 24.sp : 22.sp,
                                  color: AppColors.blueBg,
                                  //color: controller.isFav.value ? Colors.transparent : Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 6.h,
                        right: 12.w,
                        child: Container(
                          width: 250.w,
                          height: 60.h,
                          padding: EdgeInsets.all(8.sp),
                          decoration: BoxDecoration(
                            color: AppColors.blueBg.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(13.r),
                            border: Border.all(color: AppColors.blueBg, width: 0.7.w),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      property.optionTitle1,
                                      style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                          .copyWith(color: AppColors.lightGrey, fontSize: 13.2.sp, fontWeight: FontWeight.w300),
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      property.optionTSubtitle1,
                                      style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                          .copyWith(color: AppColors.lightGrey, fontSize: 14.6.sp, fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      property.optionTitle2,
                                      style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                          .copyWith(color: AppColors.lightGrey, fontSize: 13.2.sp, fontWeight: FontWeight.w300),
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      property.optionTSubtitle2,
                                      style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                          .copyWith(color: AppColors.lightGrey, fontSize: 14.6.sp, fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      property.optionTitle3,
                                      style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                          .copyWith(color: AppColors.lightGrey, fontSize: 13.2.sp, fontWeight: FontWeight.w300),
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      property.optionTSubtitle3,
                                      style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                          .copyWith(color: AppColors.lightGrey, fontSize: 14.6.sp, fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Text(
                        property.description,
                        style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                            .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.8) : AppColors.lightGrey, fontSize: 14.2.sp, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 2.h,),

                    Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp, size: 14.sp,
                          color: AppColors.homeLightGrey,
                        ),
                        SizedBox(width: 3.w,),
                        Text(
                          property.location,
                          style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                              .copyWith(color: isDark ? AppColors.lightGrey : AppColors.lightGrey, fontSize: 14.sp, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h,),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.sp),
                        child: Text(
                          property.price,
                          style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                              .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.9) : AppColors.lightGrey, fontSize: 18.sp, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}