// class ListingsThumbnailModel {
//   final String featureA;
//   final String featureB;
//   final String? featureC;
//   final String? featureD;
//   final String? featureE;
//   final String? featureF;
//   final String? featureG;
//   final String? featureH;
//
//   ListingsThumbnailModel({
//     required this.featureA,
//     required this.featureB,
//     this.featureC,
//     this.featureD,
//     this.featureE,
//     this.featureF,
//     this.featureG,
//     this.featureH,
//   });
// }

class ListingsThumbnailModel {
  final List<String> images;

  ListingsThumbnailModel({
    required this.images,
  });
}