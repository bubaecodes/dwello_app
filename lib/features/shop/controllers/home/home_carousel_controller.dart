import 'package:dwello_app/features/shop/models/home/home_carousel_model.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCarouselController extends GetxController {
  static HomeCarouselController get instance => Get.find();

  late final PageController pageController;
  final currentPage = 0.0.obs;

  final properties = [
    HomeCarouselModel(
      image: AppImages.products11,
      description: '5 Star Hotel',
      location: 'Ikeja, Lagos',
      price: 'N300,000,000',
      size: 'Area',
      size2: '6000.sqm',
      rooms: 'Rooms',
      rooms2: '56',
      feature: 'Features',
      feature2: 'Swim pool',
    ),
    HomeCarouselModel(
      image: AppImages.products31,
      description: 'Seaside Luxury View',
      location: 'VI, Lagos',
      price: 'N17,000,000',
      size: 'Area',
      size2: '2800.sqm',
      rooms: 'Rooms',
      rooms2: '4',
      feature: 'Parking Spots',
      feature2: '3 garage',
    ),
    HomeCarouselModel(
      image: AppImages.products39,
      description: 'Green Luxury Home',
      location: 'Ipaja, Lagos',
      price: 'N7,300,000',
      size: 'Area',
      size2: '1500.sqm',
      rooms: 'Rooms',
      rooms2: '3',
      feature: 'Parking Spots',
      feature2: '1 garage',
    ),
    HomeCarouselModel(
      image: AppImages.products44,
      description: 'Lakeside Luxury Home',
      location: 'Ikoyi, Lagos',
      price: 'N66,820,000',
      size: 'Area',
      size2: '3100.sqm',
      rooms: 'Rooms',
      rooms2: '6',
      feature: 'Parking Spots',
      feature2: '3 garage',
    ),
    HomeCarouselModel(
      image: AppImages.products31,
      description: 'Beautiful Duplex',
      location: 'GRA, Enugu',
      price: 'N21,000,000',
      size: 'Area',
      size2: '2800.sqm',
      rooms: 'Rooms',
      rooms2: '5',
      feature: 'Feature',
      feature2: 'Greenery',
    ),
    HomeCarouselModel(
      image: AppImages.products44,
      description: 'Serene Environment',
      location: 'Awka, Anambra',
      price: 'N8,000,000',
      size: 'Area',
      size2: '900.sqm',
      rooms: 'Rooms',
      rooms2: '3',
      feature: 'Feature',
      feature2: 'Penthouse',
    ),
    HomeCarouselModel(
      image: AppImages.products19,
      description: '2 Storey Duplex',
      location: 'Owerri, Imo',
      price: 'N41,700,000',
      size: 'Area',
      size2: '3800.sqm',
      rooms: 'Rooms',
      rooms2: '6',
      feature: 'Features',
      feature2: 'Indoor Gym',
    ),
    HomeCarouselModel(
      image: AppImages.products37,
      description: 'Office Apartment',
      location: 'VI, Lagos',
      price: 'N700,000,000',
      size: 'Area',
      size2: '7300.sqm',
      rooms: 'Spaces',
      rooms2: '62',
      feature: 'Features',
      feature2: 'Parking lot',
    ),
    HomeCarouselModel(
      image: AppImages.products11,
      description: '4 B/Room Bungalow',
      location: 'Ikeja, Lagos',
      price: 'N13,000,000',
      size: 'Area',
      size2: '1800.sqm',
      rooms: 'Rooms',
      rooms2: '4',
      feature: 'Features',
      feature2: 'Indoor Cinema',
    ),
    HomeCarouselModel(
      image: AppImages.products35,
      description: 'Exquisite Modern Duplex',
      location: 'FCT, Abuja',
      price: 'N210,000,000',
      size: 'Gym',
      size2: 'Indoor gym',
      rooms: 'Rooms',
      rooms2: '5',
      feature: 'Features',
      feature2: 'Penthouse',
    ),
  ];


  @override
  void onInit() {
    super.onInit();

    pageController = PageController(
      viewportFraction: 0.7,
    );

    pageController.addListener(() {
      currentPage.value = pageController.page ?? 0;
    });
  }

  // @override
  // void onClose() {
  //   pageController.dispose();
  //   super.onClose();
  // }
}