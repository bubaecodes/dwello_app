import 'package:dwello_app/features/authentication/screens/signup/signup_modal_bottom.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupFormFooter extends StatelessWidget {
  const SignupFormFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Center(
      child: Text.rich(
        TextSpan(
            text: 'Already have an account? ',
            style: (Theme.of(context).textTheme.bodySmall ?? const TextStyle())
                .copyWith(
              color: isDark ? AppColors.homeLightGrey : AppColors.darkBlue,
              fontSize: 12.2.sp,
              fontWeight: FontWeight.w500,
            ),
            children: [
              TextSpan(
                  text: 'Login',
                  style: (Theme.of(context).textTheme.bodySmall ?? const TextStyle())
                      .copyWith(
                    color: isDark ? AppColors.yellowBg : Colors.yellow[800],
                    fontSize: 13.4.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = (){
                      //Get.toNamed('/signupScreen');
                      Get.to(SignupModalBottom());
                    }
              ),
            ]
        ),
      ),
    );
  }
}