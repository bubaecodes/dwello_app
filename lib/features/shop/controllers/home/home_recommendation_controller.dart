import 'package:dwello_app/features/shop/models/home/home_recommendation_model.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class HomeRecommendationController extends GetxController{
  static HomeRecommendationController get instance => Get.find();

  final cards = <HomeRecommendationModel>[
    HomeRecommendationModel(
      image: AppImages.products38,
      description: 'Luxury Duplex',
      location: 'Afikpo, Ebonyi',
      price: 'N27,000,000',
    ),
    HomeRecommendationModel(
      image: AppImages.products24,
      description: '5 B/Room Duplex',
      location: 'Agege, Lagos',
      price: 'N51,800,000',
    ),
    HomeRecommendationModel(
      image: AppImages.products36,
      description: 'Exquisite 3 B/Room Bungalow',
      location: 'Umuahia, Abia',
      price: 'N44,300,000',
    ),
    HomeRecommendationModel(
      image: AppImages.products13,
      description: '4 Star Hotel',
      location: 'Ind. Layout, Enugu',
      price: 'N188,000,000',
    ),
    HomeRecommendationModel(
      image: AppImages.products25,
      description: 'Modern Duplex',
      location: 'Asaba, Delta',
      price: 'N31,800,000',
    ),
    HomeRecommendationModel(
      image: AppImages.products22,
      description: 'Semi-Detached Bungalow',
      location: 'Emene, Enugu',
      price: 'N14,520,000',
    ),
    HomeRecommendationModel(
      image: AppImages.products39,
      description: 'Office Apartment',
      location: 'New Haven, Enugu',
      price: 'N6,300,000',
    ),
    HomeRecommendationModel(
      image: AppImages.products30,
      description: 'Luxury View Duplex',
      location: 'Centenary, Enugu',
      price: 'N117,000,000',
    ),
    HomeRecommendationModel(
      image: AppImages.products36,
      description: 'Greenery 2 B/Room Bungalow',
      location: 'Owerri, Imo',
      price: 'N23,785,000',
    ),
  ];

}