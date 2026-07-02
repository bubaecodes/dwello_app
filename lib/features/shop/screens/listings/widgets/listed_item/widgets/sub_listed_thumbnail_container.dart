// import 'package:dwello_app/features/shop/controllers/listings/sub_listed_thumbnail_controller.dart';
// import 'package:dwello_app/utils/constants/image_strings.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// class SubListedThumbnailContainer extends StatelessWidget {
//   const SubListedThumbnailContainer({super.key, required this.listingIndex});
//
//   final int listingIndex;
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<SubListedThumbnailController>();
//     final listing = controller.propertyImage[listingIndex];
//     return GestureDetector(
//       onTap: controller.toggle,
//       child: Obx(
//         ()=> AnimatedContainer(
//           duration: Duration(milliseconds: 600),
//           curve: Curves.easeOut,
//           width: controller.isExpanded.value ? 420.w : 160.w,
//           height: 90.h,
//
//           child: Stack(
//             alignment: Alignment.centerLeft,
//             children: List.generate(listing.images.length, (index) {
//               return AnimatedPositioned(
//                 duration: Duration(milliseconds: 600),
//                 curve: Curves.easeOut,
//                 left: controller.isExpanded.value
//                     ? index * 81.w
//                     : index * 20.w,
//                 child: Stack(
//                   children: [
//                     GestureDetector(
//                       // onTap: () {
//                       //   controller.activeImage(index);
//                       // },
//                       onTap: () {
//                         if (!controller.isExpanded.value &&
//                             index == listing.images.length - 1) {
//                           // Last thumbnail while collapsed
//                           controller.toggle();
//                         } else {
//                           // Any other thumbnail
//                           controller.activeImage(index);
//                         }
//                       },
//                       child: Container(
//                         width: 75.w,
//                         height: 80.h,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12.r),
//                           image: DecorationImage(
//                             //image: AssetImage(AppImages.products19),
//                             image: AssetImage(listing.images[index]),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//
//                     if (!controller.isExpanded.value && index == listing.images.length - 1)
//                       Positioned.fill(
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.black45.withValues(alpha: 0.37),
//                             borderRadius: BorderRadius.circular(12.r),
//                           ),
//                           child: Center(
//                             child: Icon(
//                               Icons.add,
//                               color: Colors.white,
//                               size: 28.sp,
//                             ),
//                           ),
//                         ),
//                       ),
//                   ],
//                 ),
//               );
//             }),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:dwello_app/features/shop/controllers/listings/sub_listed_thumbnail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SubListedThumbnailContainer extends StatelessWidget {
  const SubListedThumbnailContainer({
    super.key,
    required this.listingIndex,
  });

  final int listingIndex;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SubListedThumbnailController>();
    final listing = controller.propertyImage[listingIndex];

    return Obx(() {
      if (!controller.isExpanded.value) {
        return SizedBox(
          width: 160.w,
          height: 90.h,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.centerLeft,
            children: List.generate(listing.images.length, (index) {
              final isLast = index == listing.images.length - 1;

              return Positioned(
                left: index * 20.w,
                child: GestureDetector(
                  onTap: () {
                    if (isLast) {
                      controller.toggle();
                    } else {
                      controller.activeImage(index);
                    }
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 75.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          image: DecorationImage(
                            image: AssetImage(listing.images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      if (isLast)
                        IgnorePointer(
                          child: Container(
                            width: 75.w,
                            height: 80.h,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30.sp,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            }),
          ),
        );
      }

      return SizedBox(
        height: 90.h,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(listing.images.length, (index) {
              return Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: GestureDetector(
                  onTap: () => controller.activeImage(index),
                  child: Container(
                    width: 75.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: controller.selectedIndex.value == index
                            ? Colors.blue
                            : Colors.transparent,
                        width: 2,
                      ),
                      image: DecorationImage(
                        image: AssetImage(listing.images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      );
    });
  }
}
