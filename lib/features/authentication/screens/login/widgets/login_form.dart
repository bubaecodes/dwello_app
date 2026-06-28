import 'package:dwello_app/bottom_nav_menu.dart';
import 'package:dwello_app/common/styles/app_form_text_field.dart';
import 'package:dwello_app/features/authentication/screens/login/widgets/login_form_footer.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          AppFormTextField(
            hintText: 'Email',
            prefixIcon: Icons.mail,
          ),
          SizedBox(height: 13.h,),

          AppFormTextField(
            hintText: 'Password',
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_off,
          ),
          SizedBox(height: 12.h,),

          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password',
                  style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                      .copyWith(color: isDark ? AppColors.yellowBg : Colors.yellow[800], fontSize: 14.sp, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  softWrap: true,
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h,),

          InkWell(
            onTap: ()=> Get.to(()=> BottomNavMenu()),
            child: Container(
              height: 52.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
                border: Border.all(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                      .copyWith(color: isDark ? AppColors.blueBg : AppColors.homeLightGrey, fontSize: 14.8.sp, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.h,),

          Row(
            children: [
              Expanded(child: Divider(thickness: 1, color: AppColors.grey)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Or',
                  style:
                  (Theme.of(context).textTheme.bodySmall ??
                      const TextStyle())
                      .copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(child: Divider(thickness: 1, color: AppColors.grey)),
            ],
          ),
          SizedBox(height: 5.h,),

          Container(
            height: 47.h,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg.withValues(alpha: 0.7), width: 0.5.h),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.googleIcon, width: 21.sp, height: 21.sp,),
                SizedBox(width: 10.w,),
                Text(
                  'Continue with Google',
                  style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                      .copyWith(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg, fontSize: 14.5.sp, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 9.h,),

          Container(
            height: 47.h,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg.withValues(alpha: 0.7), width: 0.5.h),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.appleIcon,
                  width: 22.sp,
                  height: 22.sp,
                  color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
                ),
                SizedBox(width: 10.w,),
                Text(
                  'Continue with Apple',
                  style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                      .copyWith(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg, fontSize: 14.5.sp, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 17.h,),

          LoginFormFooter(),
        ],
      )
    );
  }
}
