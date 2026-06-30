import 'package:dwello_app/features/shop/controllers/home/home_carousel_controller.dart';
import 'package:dwello_app/features/shop/screens/home/widgets/home_body/home_card_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeCarouselController());

    final cardWidth = 0.7.sw;
    final cardHeight = 0.402.sh;

    final visibleWidth = 0.12.sw;

    final gap = 0.03.sw;

    return SizedBox(
      width: 1.sw,
      height: cardHeight,
      child: Obx(
        () {
          final previous =
          controller.properties[controller.previousIndex];

          final current =
          controller.properties[controller.currentIndex.value];

          final next =
          controller.properties[controller.nextIndex];

          return GestureDetector(
            behavior: HitTestBehavior.translucent,

            onHorizontalDragUpdate: (details) {
              controller.onDragUpdate(details.delta.dx);
            },

            onHorizontalDragEnd: (_) {
              controller.onDragEnd();
            },

            child: Stack(
              clipBehavior: Clip.none,
              children: [

                AnimatedPositioned(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeIn,

                  //left: -(cardWidth - visibleWidth),
                  left: -(cardWidth - visibleWidth) + controller.offset,

                  width: cardWidth,
                  height: cardHeight,

                  child: IgnorePointer(
                    child: HomeCardContainer(
                      property: previous,
                      isActive: false,
                    ),
                  ),
                ),

                AnimatedPositioned(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeOutBack,

                  //left: visibleWidth + gap,
                  left: visibleWidth + gap + controller.offset,

                  width: cardWidth,
                  height: cardHeight,

                  child: HomeCardContainer(
                    property: current,
                    isActive: true,
                  ),
                ),

                AnimatedPositioned(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeIn,

                  //left: visibleWidth + gap + cardWidth + gap,
                  left: visibleWidth + gap + cardWidth + gap + controller.offset,

                  width: cardWidth,
                  height: cardHeight,

                  child: IgnorePointer(
                    child: HomeCardContainer(
                      property: next,
                      isActive: false,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
