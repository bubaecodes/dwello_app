// import 'dart:ui';
//
// import 'package:dwello_app/features/shop/controllers/home/home_carousel_controller.dart';
// import 'package:dwello_app/features/shop/screens/home/widgets/home_body/home_body.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// class HomeCarousel extends StatelessWidget {
//   const HomeCarousel({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(HomeCarouselController());
//     return SizedBox(
//       height: 0.42.sh,
//       child: PageView.builder(
//         controller: controller.pageController,
//         itemCount: controller.properties.length,
//         // itemBuilder: (context, index) {
//         //   final difference =
//         //   (controller.currentPage.value - index).abs();
//         //
//         //   final scale =
//         //   (1 - difference * 0.15).clamp(0.9, 1.0);
//         //
//         //   return Center(
//         //     child: AnimatedScale(
//         //       scale: scale,
//         //       duration: const Duration(milliseconds: 200),
//         //       child: HomeBody(property: controller.properties[index],),
//         //     ),
//         //   );
//         // },
//
//           itemBuilder: (context, index) {
//             final page = controller.currentPage.value;
//
//             final distance = (page - index);
//
//             final scale = 1 - (distance.abs() * 0.3);
//             final clampedScale = scale.clamp(0.83, 1.0);
//
//             final width = lerpDouble(
//               0.83.sw,
//               0.1.sw,
//               1 - clampedScale,
//             )!;
//
//             final height = lerpDouble(
//               0.402.sh,
//               0.29.sh,
//               1 - clampedScale,
//             )!;
//
//             return Center(
//               child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 150),
//                 curve: Curves.easeOut,
//                 width: width,
//                 height: height,
//                 child: HomeBody(
//                   property: controller.properties[index],
//                 ),
//               ),
//             );
//           }
//       ),
//     );
//   }
// }