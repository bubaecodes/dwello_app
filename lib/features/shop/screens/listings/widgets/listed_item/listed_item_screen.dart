import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ListedItemScreen extends StatelessWidget {
  const ListedItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 0.51.sh,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.products23),
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
              bottom: 0,
              left: 0,
              right: 0,
              top: 0.4.sh,
              child: Container(
                width: double.infinity,
                height: 0.4.sh,
                padding: EdgeInsets.all(10.sp),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
