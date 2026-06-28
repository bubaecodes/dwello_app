import 'package:dwello_app/features/shop/screens/home/home_screen.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:dwello_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class BottomNavMenu extends StatelessWidget {
  BottomNavMenu({super.key});
  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      extendBody: true,

      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.pages,
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Container(
          height: 70,
          width: 0.85.sw,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.15),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Obx(
              () => BottomNavigationBar(
                currentIndex: controller.selectedIndex.value,
                onTap: controller.changeTab,

                type: BottomNavigationBarType.fixed,
                elevation: 0,
                backgroundColor: isDark ? AppColors.lightBlue : Colors.white,

                selectedItemColor: isDark ? AppColors.whiteBg : AppColors.blueBg,
                unselectedItemColor: Colors.grey[500],

                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_rounded),
                    activeIcon: Icon(Icons.home_filled),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_outline_rounded),
                    activeIcon: Icon(Icons.favorite_rounded),
                    label: "Favorites",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.credit_card),
                    activeIcon: Icon(Icons.credit_card_rounded),
                    label: "Wallet",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_rounded),
                    activeIcon: Icon(Icons.person),
                    label: "Profile",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
  }

  final pages = [
    HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.black),
  ];
}
