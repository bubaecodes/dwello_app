import 'package:get/get.dart';

class ZoomController extends GetxController {
  static ZoomController get instance => Get.find();
  RxDouble scale = 1.0.obs;

  @override
  void onInit() {
    super.onInit();
    _animate();
  }

  void _animate() async {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 600));
      scale.value = 1.2;

      await Future.delayed(const Duration(seconds: 1));
      scale.value = 1.0;
    }
  }
}