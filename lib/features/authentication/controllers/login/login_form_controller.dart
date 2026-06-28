import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormController extends GetxController{
  static LoginFormController get instance => Get.find();

  TextEditingController textEditingController = TextEditingController();
}