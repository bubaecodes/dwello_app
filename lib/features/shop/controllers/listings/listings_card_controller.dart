import 'package:dwello_app/features/shop/models/listings/listings_card_model.dart';
import 'package:dwello_app/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class ListingsCardController extends GetxController{
  static ListingsCardController get instance => Get.find();


  final listings = <ListingsCardModel> [
    ListingsCardModel(
      image: AppImages.products12,
      price: 'N22,300,000',
      location: 'Oredo, Benin',
      description: 'Duplex',
      type: 'Buy'
    ),
    ListingsCardModel(
      image: AppImages.products15,
      price: 'N23,700,000',
      location: 'Fegge, Onitsha',
      description: 'Modern Duplex',
      type: 'Buy',
    ),
    ListingsCardModel(
      image: AppImages.products18,
      price: 'N4,400,000',
      location: 'WTC, Enugu',
      description: '2 Storey Duplex',
      type: 'Rent',
    ),
    ListingsCardModel(
      image: AppImages.products23,
      price: 'N88,000,000',
      location: 'Ogui Rd, Enugu',
      description: 'Office Complex',
      type: 'Buy',
    ),
    ListingsCardModel(
      image: AppImages.products38,
      price: 'N102,500,000',
      location: 'Centenary, Enugu',
      description: 'Luxury Duplex',
      type: 'Buy',
    ),
    ListingsCardModel(
      image: AppImages.products49,
      price: '11,900,000',
      location: 'Awka, Anambra',
      description: '4 B/Room Bungalow',
      type: 'Buy',
    ),
    ListingsCardModel(
      image: AppImages.products12,
      price: 'N22,300,000',
      location: 'Oredo, Benin',
      description: 'Duplex',
      type: 'Buy',
    ),
    ListingsCardModel(
      image: AppImages.products26,
      price: 'N158,420,000',
      location: 'Sangotedo, Lagos',
      description: 'Luxury Duplex',
      type: 'Buy',
    ),
    ListingsCardModel(
      image: AppImages.products45,
      price: 'N206,000,000',
      location: 'Wuse, Abuja',
      description: 'Duplex',
      type: 'Buy',
    ),
    ListingsCardModel(
      image: AppImages.products33,
      price: 'N55,500,000',
      location: 'Benin City, Benin',
      description: 'Duplex',
      type: 'Buy',
    ),
    ListingsCardModel(
      image: AppImages.products12,
      price: 'N900,000',
      location: 'Ihitte, Owerri',
      description: '3 B/Room Bungalow',
      type: 'Rent',
    ),
    ListingsCardModel(
      image: AppImages.products12,
      price: 'N69,140,000',
      location: 'Awka, Anambra',
      description: '5 B/Room Duplex',
      type: 'Buy',
    ),
    ListingsCardModel(
      image: AppImages.products48,
      price: 'N2,300,000',
      location: 'Maryland, Enugu',
      description: '3 B/Room Duplex',
      type: 'Rent',
    ),
    ListingsCardModel(
      image: AppImages.products8,
      price: 'N12,300,000',
      location: 'VI, Lagos',
      description: '3 B/Room Flat',
      type: 'Rent',
    ),
    ListingsCardModel(
      image: AppImages.products12,
      price: 'N1,700,000',
      location: 'GRA, Enugu',
      description: '2 B/Room Duplex',
      type: 'Rent',
    ),
    ListingsCardModel(
      image: AppImages.products25,
      price: 'N4,700,000',
      location: 'Ikoyi, Lagos',
      description: 'Office Space',
      type: 'Rent',
    ),
    ListingsCardModel(
      image: AppImages.products42,
      price: 'N13,300,000',
      location: 'New Haven Ext, Enugu',
      description: 'Modern Bungalow',
      type: 'Buy',
    ),
    ListingsCardModel(
      image: AppImages.products19,
      price: '37,900,000',
      location: 'Oredo, Benin',
      description: 'Duplex',
      type: 'Buy',
    ),
  ];
}