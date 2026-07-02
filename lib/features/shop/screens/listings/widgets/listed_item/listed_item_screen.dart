import 'package:dwello_app/features/shop/controllers/listings/sub_listed_thumbnail_controller.dart';
import 'package:dwello_app/features/shop/screens/listings/widgets/listed_item/widgets/sub_listed_thumbnail_container.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ListedItemScreen extends StatelessWidget {
  const ListedItemScreen({super.key, required this.listingIndex});

  final int listingIndex;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    final controller = Get.put(SubListedThumbnailController());
    final listing = controller.propertyImage[listingIndex];
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1.sh,
          width: 1.sh,
          child: Stack(
            children: [
              Obx(
                ()=> SizedBox(
                  height: 0.474.sh,
                  width: 1.sw,
                  child: Image.asset(
                    //AppImages.products33,
                    listing.images[controller.selectedIndex.value],
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                top: 60.h,
                left: 16.w,
                child: InkWell(
                  onTap: ()=> Get.back(),
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    padding: EdgeInsets.all(5.sp),
                    decoration: BoxDecoration(
                      color: AppColors.blueBg.withValues(alpha: 0.45),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 28.sp,
                      color: AppColors.homeLightGrey,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 0,
                right: 0,
                top: 0.44.sh,
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: 0.56.sh,
                  ),
                  padding: EdgeInsets.all(10.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    ),
                    color: isDark ? AppColors.blueBg : AppColors.whiteBg,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubListedThumbnailContainer(listingIndex: listingIndex,),
                        SizedBox(height: 10.h,),

                        Text(
                          'Features & Amenities',
                          style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                              .copyWith(color: isDark ? AppColors.lighterGrey : AppColors.blueBg, fontSize: 22.sp, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 8.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.lightbulb, color: Colors.amber, size: 13.sp,),
                            //Icon(Icons.electric_bolt, color: Colors.amber, size: 13.sp,),
                            SizedBox(width: 3.sp,),
                            Text(
                              '24/7 Electricity',
                              style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                  .copyWith(color: isDark ? AppColors.lighterGrey : AppColors.blueBg, fontSize: 13.sp, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.airplanemode_active_rounded, color: Colors.green, size: 13.sp,),
                            SizedBox(width: 3.sp,),
                            Text(
                              'Proximity to Airport',
                              style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                  .copyWith(color: isDark ? AppColors.lighterGrey : AppColors.blueBg, fontSize: 13.sp, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.directions_car_filled_rounded, color: Colors.redAccent, size: 13.sp,),
                            SizedBox(width: 3.sp,),
                            Text(
                              'Parking Space',
                              style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                  .copyWith(color: isDark ? AppColors.lighterGrey : AppColors.blueBg, fontSize: 13.sp, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.water_rounded, color: Colors.blueAccent, size: 13.sp,),
                            SizedBox(width: 3.sp,),
                            Text(
                              'Water Supply',
                              style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                  .copyWith(color: isDark ? AppColors.lighterGrey : AppColors.blueBg, fontSize: 13.sp, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.add_road_rounded, color: Colors.amber, size: 13.sp,),
                            SizedBox(width: 3.sp,),
                            Text(
                              'Tarred Road',
                              style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                  .copyWith(color: isDark ? AppColors.lighterGrey : AppColors.blueBg, fontSize: 13.sp, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        SizedBox(height: 12.h,),

                        Container(
                          width: double.infinity,
                          height: 0.16.sh,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.r),
                            color: Colors.greenAccent
                          ), ///positioned child for 'view full map' btn
                        ),
                        SizedBox(height: 14.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              ///date & time
                              child: Container(
                                width: 0.42.sw,
                                height: 50.h,
                                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13.r),
                                  color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
                                ),
                                child: Center(
                                  child: Text(
                                    'Book Inspection',
                                    style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                        .copyWith(color: isDark ? AppColors.blueBg : AppColors.lighterGrey, fontSize: 14.3.sp, fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                            ),

                            InkWell(
                              /// chat-like feature or phone call access
                              child: Container(
                                width: 0.42.sw,
                                height: 50.h,
                                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13.r),
                                  border: Border.all( width: 0.7.sp, color: isDark ? AppColors.homeLightGrey : AppColors.blueBg),
                                ),
                                child: Center(
                                  child: Text(
                                    'Chat Realtor',
                                    style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                        .copyWith(color: isDark ? AppColors.lighterGrey : AppColors.lightBlue, fontSize: 14.3.sp, fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
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
    );
  }
}
