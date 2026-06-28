import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFormTextField extends StatelessWidget {
  const AppFormTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    //required this.controller,
  });

  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onTap;
  //final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return TextFormField(
      //controller: controller,
      style: TextStyle(
        fontSize: 14.sp,
        color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
        fontWeight: FontWeight.w500,
      ),

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 13.sp,
          color: isDark ? AppColors.homeLightGrey : AppColors.blueBg.withValues(alpha: 0.6),
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: Icon(prefixIcon, size: 20.sp, color: isDark ? AppColors.homeLightGrey : AppColors.grey.withValues(alpha: 0.65),),
        suffixIcon: InkWell(
          onTap: onTap,
          child: Icon(suffixIcon, size: 20.sp, color: isDark ? AppColors.homeLightGrey : AppColors.grey.withValues(alpha: 0.65),),
        ),
        filled: true,
        fillColor: AppColors.lightGrey.withValues(alpha: 0.1),

        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 8.h,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            width: 0.7.sp,
            color: isDark ? AppColors.grey.withValues(alpha: 0.3) : AppColors.darkBlue,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            width: 1.7.sp,
            color: isDark ? AppColors.grey.withValues(alpha: 0.3) : AppColors.darkBlue,
          ),
        ),
      ),
    );
  }
}
