import 'package:dwello_app/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  static SplashController get instance => Get.find();

  RxBool animate = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    startAnimation();
  }

  Future<void> startAnimation() async{
    await Future.delayed(Duration(milliseconds: 2000));
    animate.value = true;

    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(OnboardingScreen());
  }
}