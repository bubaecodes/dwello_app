import 'package:dwello_app/common/styles/app_form_text_field.dart';
import 'package:dwello_app/features/authentication/screens/signup/widgets/signup_form_footer.dart';

import 'package:dwello_app/features/shop/screens/home/home_screen.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          AppFormTextField(
            hintText: 'Full Name',
            prefixIcon: Icons.person,
          ),
          SizedBox(height: 13.h,),

          AppFormTextField(
            hintText: 'Email',
            prefixIcon: Icons.mail,
          ),
          SizedBox(height: 13.h,),

          AppFormTextField(
            hintText: 'Phone Number',
            prefixIcon: Icons.phone,
          ),
          SizedBox(height: 13.h,),

          AppFormTextField(
            hintText: 'Create Password',
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_off,
          ),
          SizedBox(height: 28.h,),

          InkWell(
            onTap: ()=> Get.to(()=> HomeScreen()),
            child: Container(
              height: 62.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,
                border: Border.all(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg,),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Center(
                child: Text(
                  'Continue',
                  style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                      .copyWith(color: isDark ? AppColors.blueBg : AppColors.homeLightGrey, fontSize: 14.8.sp, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h,),

          SignupFormFooter(),
        ],
      ),
    );
  }
}
