import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBgContainer extends StatelessWidget {
  const LoginBgContainer({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: 135.w,
      height: 230.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: isDark ? AppColors.whiteBg : AppColors.blueBg, width: 0.4.sp),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
