import 'package:dwello_app/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginBgController extends GetxController{
  static LoginBgController get instance => Get.find();

  // final List<String> images = [
  //   AppImages.products2,
  //   AppImages.products3,
  //   AppImages.products4,
  //   AppImages.products9,
  //   AppImages.products12,
  // ];


  final topController = ScrollController();
  final bottomController = ScrollController();

  bool isRunning = true;
  final double speed = 30;

  @override
  void onReady() {
    super.onReady();

    Future.delayed(const Duration(milliseconds: 100), () {
      if (topController.hasClients) {
        topController.jumpTo(topController.position.maxScrollExtent);
      }

      _animateTop();
      _animateBottom();
    });
  }

  Future<void> _animateTop() async {
    while (isRunning) {
      await Future.delayed(const Duration(milliseconds: 16));

      if (!topController.hasClients) continue;

      final next = topController.offset - speed * 0.016;

      if (next <= 0) {
        topController.jumpTo(topController.position.maxScrollExtent);
      } else {
        topController.jumpTo(next);
      }
    }
  }

  Future<void> _animateBottom() async {
    while (isRunning) {
      await Future.delayed(const Duration(milliseconds: 17));

      if (!bottomController.hasClients) continue;

      final max = bottomController.position.maxScrollExtent;
      final next = bottomController.offset + speed * 0.015;

      if (next >= max) {
        bottomController.jumpTo(0);
      } else {
        bottomController.jumpTo(next);
      }
    }
  }

  void stop() => isRunning = false;

  @override
  void onClose() {
    topController.dispose();
    bottomController.dispose();
    super.onClose();
  }

  // final ScrollController scrollController = ScrollController();
  //
  // final double scrollSpeed = 30;
  // bool isRunning = true;
  //
  // @override
  // void onInit() {
  //   super.onInit();
  //   startScrolling();
  // }
  //
  // void startScrolling() async {
  //   while (isRunning) {
  //     await Future.delayed(const Duration(milliseconds: 16));
  //
  //     if (!scrollController.hasClients) continue;
  //
  //     double maxScroll = scrollController.position.maxScrollExtent;
  //     double current = scrollController.offset;
  //
  //     double next = current + scrollSpeed * 0.016;
  //
  //     if (next >= maxScroll) {
  //       scrollController.jumpTo(0);
  //     } else {
  //       scrollController.jumpTo(next);
  //     }
  //   }
  // }
  //
  // void stop() {
  //   isRunning = false;
  // }
  //
  // @override
  // void onClose() {
  //   scrollController.dispose();
  //   super.onClose();
  // }
}