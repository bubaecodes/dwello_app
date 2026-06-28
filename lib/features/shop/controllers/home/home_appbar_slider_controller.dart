import 'package:get/get.dart';

class HomeAppbarSliderController extends GetxController{
  static HomeAppbarSliderController get instance => Get.find();

  final selectedOption = 0.obs;

  final List<String> optionTexts = [
    'All',
    'Buy',
    'Rent',
    'Commercial',
  ];
}