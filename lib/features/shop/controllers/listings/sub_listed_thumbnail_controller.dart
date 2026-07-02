import 'package:dwello_app/features/shop/models/listings/listings_thumbnail_model.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class SubListedThumbnailController extends GetxController{
  static SubListedThumbnailController get instance => Get.find();

  RxBool isExpanded = false.obs;
  RxInt selectedIndex = 0.obs;

  void toggle(){
    isExpanded.toggle();
  }

  void activeImage(int index){
    selectedIndex.value = index;
  }

    final propertyImage = <ListingsThumbnailModel> [
    ListingsThumbnailModel(
        images: [
        AppImages.products1,
        AppImages.products4,
        AppImages.products18,
        AppImages.products43,
        AppImages.products54,
        AppImages.products45,
        AppImages.products59,
        ]
    ),
    ListingsThumbnailModel(
        images: [
          AppImages.products70,
          AppImages.products61,
          AppImages.products50,
        ]
    ),
    ListingsThumbnailModel(
        images: [
          AppImages.products31,
          AppImages.products33,
          AppImages.products36,
          AppImages.products56,
        ]
    ),
    ListingsThumbnailModel(
        images: [
          AppImages.products69,
          AppImages.products41,
          AppImages.products22,
          AppImages.products46,
          AppImages.products57,
          AppImages.products48,
          AppImages.products62,
        ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products10,
        AppImages.products39,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products6,
        AppImages.products9,
        AppImages.products19,
        AppImages.products71,
        AppImages.products64,
        AppImages.products52,
      ]
    ),

    ///hotel
    ListingsThumbnailModel(
      images: [
        AppImages.products11,
        AppImages.products11,
      ]
    ),

    ListingsThumbnailModel(
      images: [
        AppImages.products14,
        AppImages.products27,
        AppImages.products37,
        AppImages.products40,
        AppImages.products26,
        AppImages.products55,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products15,
        AppImages.products23,
        AppImages.products32,
        AppImages.products22,
        AppImages.products59,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products8,
        AppImages.products24,
        AppImages.products22,
        AppImages.products57,
        AppImages.products65,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products70,
        AppImages.products65,
        AppImages.products60,
        AppImages.products23,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products69,
        AppImages.products47,
        AppImages.products44,
        AppImages.products35,
        AppImages.products36,
        AppImages.products45,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products68,
        AppImages.products64,
        AppImages.products61,
        AppImages.products49,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products27,
        AppImages.products67,
        AppImages.products56,
        AppImages.products52,
        AppImages.products33,
        AppImages.products34,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products29,
        AppImages.products36,
        AppImages.products24,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products2,
        AppImages.products7,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products13,
        AppImages.products63,
        AppImages.products47,
        AppImages.products54,
        AppImages.products58,
        AppImages.products37,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products3,
        AppImages.products4,
        AppImages.products18,
        AppImages.products19,
        AppImages.products67,
        AppImages.products46,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products30,
        AppImages.products32,
        AppImages.products40,
        AppImages.products64,
        AppImages.products57,
        AppImages.products48,
        AppImages.products62,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products69,
        AppImages.products66,
        AppImages.products51,
        AppImages.products44,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products70,
        AppImages.products65,
        AppImages.products58,
        AppImages.products16,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products5,
        AppImages.products25,
        AppImages.products45,
        AppImages.products61,
        AppImages.products56,
        AppImages.products36,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products6,
        AppImages.products12,
        AppImages.products18,
        AppImages.products19,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products8,
        AppImages.products18,
        AppImages.products22,
        AppImages.products37,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products66,
        AppImages.products62,
        AppImages.products63,
        AppImages.products67,
        AppImages.products38,
        AppImages.products26,
        AppImages.products32,
        AppImages.products55,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products29,
        AppImages.products50,
        AppImages.products24,
        AppImages.products16,
        AppImages.products4,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products68,
        AppImages.products28,
        AppImages.products43,
        AppImages.products51,
        AppImages.products44,
        AppImages.products59,
        AppImages.products65,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products7,
        AppImages.products7,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products5,
        AppImages.products71,
        AppImages.products9,
        AppImages.products33,
        AppImages.products19,
        AppImages.products40,
        AppImages.products46,
      ]
    ),
    ListingsThumbnailModel(
      images: [
        AppImages.products39,
        AppImages.products39,
      ]
    ),
  ].obs;
}