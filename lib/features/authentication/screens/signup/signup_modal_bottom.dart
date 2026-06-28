import 'package:dwello_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupModalBottom extends StatelessWidget {
  const SignupModalBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Container(
      height: 0.62.sh,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 18.h),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkBlue : AppColors.whiteBg,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: InkWell(
              onTap: ()=> Get.back(),
              child: Icon(Icons.close),
            ),
          ),
          Text(
            'Welcome to Dwello',
            style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                .copyWith(color: isDark ? AppColors.homeLightGrey : AppColors.blueBg, fontSize: 26.sp, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 2.h,),

          Text(
            'Sign up to start your journey to your dream home.',
            style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                .copyWith(color: isDark ? AppColors.lightGreyText : AppColors.grey, fontSize: 14.sp, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
            maxLines: 2,
            softWrap: true,
          ),
          SizedBox(height: 20.h,),

          SignupForm(),
        ],
      ),
    );
  }
}
