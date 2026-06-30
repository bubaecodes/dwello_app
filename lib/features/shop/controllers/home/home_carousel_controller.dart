import 'package:dwello_app/features/shop/models/home/home_carousel_model.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class HomeCarouselController extends GetxController {
  static HomeCarouselController get instance => Get.find();

  final currentIndex = 0.obs;

  final dragging = false.obs;

  final dragOffset = 0.0.obs;
  double get offset => dragOffset.value;

  final properties = <HomeCarouselModel>[
    HomeCarouselModel(
      image: AppImages.products11,
      description: '5 Star Hotel',
      location: 'Ikeja, Lagos',
      price: 'N300,000,000',
      optionTitle1: 'Area',
      optionTSubtitle1: '6000.sqm',
      optionTitle2: 'Rooms',
      optionTSubtitle2: '56',
      optionTitle3: 'Features',
      optionTSubtitle3: 'Swim pool',
    ),
    HomeCarouselModel(
      image: AppImages.products31,
      description: 'Seaside Luxury View',
      location: 'VI, Lagos',
      price: 'N17,000,000',
      optionTitle1: 'Area',
      optionTSubtitle1: '2800.sqm',
      optionTitle2: 'Rooms',
      optionTSubtitle2: '4',
      optionTitle3: 'Parking Spots',
      optionTSubtitle3: '3 garage',
    ),
    HomeCarouselModel(
      image: AppImages.products39,
      description: 'Green Luxury Home',
      location: 'Ipaja, Lagos',
      price: 'N7,300,000',
      optionTitle1: 'Area',
      optionTSubtitle1: '1500.sqm',
      optionTitle2: 'Rooms',
      optionTSubtitle2: '3',
      optionTitle3: 'Parking Spots',
      optionTSubtitle3: '1 garage',
    ),
    HomeCarouselModel(
      image: AppImages.products44,
      description: 'Lakeside Luxury Home',
      location: 'Ikoyi, Lagos',
      price: 'N66,820,000',
      optionTitle1: 'Area',
      optionTSubtitle1: '3100.sqm',
      optionTitle2: 'Rooms',
      optionTSubtitle2: '6',
      optionTitle3: 'Parking Spots',
      optionTSubtitle3: '3 garage',
    ),
    HomeCarouselModel(
      image: AppImages.products31,
      description: 'Beautiful Duplex',
      location: 'GRA, Enugu',
      price: 'N21,000,000',
      optionTitle1: 'Area',
      optionTSubtitle1: '2800.sqm',
      optionTitle2: 'Rooms',
      optionTSubtitle2: '5',
      optionTitle3: 'Feature',
      optionTSubtitle3: 'Greenery',
    ),
    HomeCarouselModel(
      image: AppImages.products44,
      description: 'Serene Environment',
      location: 'Awka, Anambra',
      price: 'N8,000,000',
      optionTitle1: 'Area',
      optionTSubtitle1: '900.sqm',
      optionTitle2: 'Rooms',
      optionTSubtitle2: '3',
      optionTitle3: 'Feature',
      optionTSubtitle3: 'Penthouse',
    ),
    HomeCarouselModel(
      image: AppImages.products19,
      description: '2 Storey Duplex',
      location: 'Owerri, Imo',
      price: 'N41,700,000',
      optionTitle1: 'Area',
      optionTSubtitle1: '3800.sqm',
      optionTitle2: 'Rooms',
      optionTSubtitle2: '6',
      optionTitle3: 'Features',
      optionTSubtitle3: 'Indoor Gym',
    ),
    HomeCarouselModel(
      image: AppImages.products37,
      description: 'Office Apartment',
      location: 'VI, Lagos',
      price: 'N700,000,000',
      optionTitle1: 'Area',
      optionTSubtitle1: '7300.sqm',
      optionTitle2: 'Spaces',
      optionTSubtitle2: '62',
      optionTitle3: 'Features',
      optionTSubtitle3: 'Parking lot',
    ),
    HomeCarouselModel(
      image: AppImages.products11,
      description: '4 B/Room Bungalow',
      location: 'Ikeja, Lagos',
      price: 'N13,000,000',
      optionTitle1: 'Area',
      optionTSubtitle1: '1800.sqm',
      optionTitle2: 'Rooms',
      optionTSubtitle2: '4',
      optionTitle3: 'Features',
      optionTSubtitle3: 'Indoor Cinema',
    ),
    HomeCarouselModel(
      image: AppImages.products35,
      description: 'Exquisite Modern Duplex',
      location: 'FCT, Abuja',
      price: 'N210,000,000',
      optionTitle1: 'Gym',
      optionTSubtitle1: 'Indoor gym',
      optionTitle2: 'Rooms',
      optionTSubtitle2: '5',
      optionTitle3: 'Features',
      optionTSubtitle3: 'Penthouse',
    ),
  ].obs;

  int get previousIndex {
    if (currentIndex.value == 0) {
      return properties.length - 1;
    }

    return currentIndex.value - 1;
  }

  int get nextIndex {
    if (currentIndex.value == properties.length - 1) {
      return 0;
    }

    return currentIndex.value + 1;
  }

  void onDragUpdate(double dx) {
    dragging.value = true;
    dragOffset.value += dx;
  }

  void onDragEnd() {
    if (dragOffset.value < -80) {
      next();
    } else if (dragOffset.value > 80) {
      previous();
    }

    dragOffset.value = 0;

    dragging.value = false;
  }

  void next() {

    if (currentIndex.value == properties.length - 1) {
      currentIndex.value = 0;
    }

    else {
      currentIndex.value++;
    }

  }

  void previous() {

    if (currentIndex.value == 0) {
      currentIndex.value = properties.length - 1;
    }

    else {
      currentIndex.value--;
    }

  }
}