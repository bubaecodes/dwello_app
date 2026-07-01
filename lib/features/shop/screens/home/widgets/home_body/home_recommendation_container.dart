import 'package:dwello_app/features/shop/controllers/home/home_recommendation_controller.dart';
import 'package:dwello_app/features/shop/screens/listings/widgets/listed_item/listed_item_screen.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeRecommendationContainer extends StatelessWidget {
  const HomeRecommendationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeRecommendationController());
    final isDark = AppHelperFunctions.isDarkMode(context);
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: controller.cards.length,
      itemBuilder: (context, index){
        final card = controller.cards[index];
        return InkWell(
          onTap: ()=> Get.to(ListedItemScreen()),
          child: Container(
            width: double.infinity,
            height: 80.h,
            margin: EdgeInsets.only(bottom: 10.h),
            decoration: BoxDecoration(
              color: isDark ? AppColors.darkBlue.withValues(alpha: 0.9) : AppColors.blueBg.withValues(alpha: 0.95),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: isDark ? AppColors.homeLightGrey : Colors.purple, width: 0.5.w),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.h, bottom: 4.h, left: 8.w, right: 3.w),
                  child: Container(
                    width: 75.w,
                    height: 66.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.r),
                      image: DecorationImage(
                        image: AssetImage(card.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
          
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 19.h, horizontal: 4.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          card.description,
                          style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                              .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.9) : AppColors.whiteBg,
                              fontSize: 12.4.sp,
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis
                          ),
                          textAlign: TextAlign.start,
                        ),
          
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_sharp, size: 14.sp,
                              color: AppColors.homeLightGrey,
                            ),
                            SizedBox(width: 3.w,),
          
                            Text(
                              card.location,
                              style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                  .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.9) : AppColors.whiteBg,
                                fontSize: 12.5.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
          
                Padding(
                  padding: EdgeInsets.only(right: 8.w, bottom: 8.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        card.price,
                        style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                            .copyWith(color: isDark ? AppColors.lightGrey.withValues(alpha: 0.9) : AppColors.whiteBg,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          overflow: TextOverflow.ellipsis,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
