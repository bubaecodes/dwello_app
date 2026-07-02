import 'package:dwello_app/features/shop/controllers/listings/listings_card_controller.dart';
import 'package:dwello_app/features/shop/screens/listings/widgets/listed_item/listed_item_screen.dart';
import 'package:dwello_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ListingsCardContainer extends StatelessWidget {
  const ListingsCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ListingsCardController());
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.listings.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index){
        final listing = controller.listings[index];
        return InkWell(
          onTap: ()=> Get.to(ListedItemScreen(listingIndex: index,)),
          child: Container(
            width: 0.44.sw,
            height: 0.26.sh,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              image: DecorationImage(
                image: AssetImage(listing.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 7.h,
                  left: 8.w,
                  child: Container(
                    width: 46.w,
                    height: 16.h,
                    padding: EdgeInsets.symmetric( horizontal: 2.sp),
                    decoration: BoxDecoration(
                      color: AppColors.blueBg,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: Text(
                        listing.type,
                        style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                            .copyWith(color: AppColors.whiteBg, fontSize: 13.sp, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 22.h,
                  right: 8.w,
                  child: Text(
                    listing.price,
                    style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                        .copyWith(color: Colors.white, fontSize: 13.sp, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                ),

                Positioned(
                  bottom: 10.h,
                  left: 12.w,
                  right: 11.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_sharp, size: 14.sp,
                            color: AppColors.homeLightGrey,
                          ),
                          Expanded(
                            child: Text(
                              listing.location,
                              style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                  .copyWith(color: Colors.white, fontSize: 13.2.sp, fontWeight: FontWeight.w300),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.home_filled, size: 14.sp,
                            color: AppColors.homeLightGrey,
                          ),
                          SizedBox(width: 1.3.w,),
                          Expanded(
                            child: Text(
                              listing.description,
                              style: (Theme.of(context).textTheme.headlineLarge ?? const TextStyle())
                                  .copyWith(color: Colors.white, fontSize: 13.2.sp, fontWeight: FontWeight.w300),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
