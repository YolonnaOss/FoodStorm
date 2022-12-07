class Cards {
  int postID;
  int cafeID;
  bool promotion;
  String message;
  Discount discount;
  String createdAt;
  String image;
  String cafeName;
  String cafeLogo;
  String cafeRating;
  List<String> tags;

  Cards(
      {required this.postID,
      required this.cafeID,
      required this.promotion,
      required this.message,
      required this.discount,
      required this.createdAt,
      required this.image,
      required this.cafeName,
      required this.cafeLogo,
      required this.cafeRating,
      required this.tags});
}

class Discount {
  bool? present;
  String? presentText;
  int? percents;
  int? fullPrice;
  int? finalPrice;
  String validTo;

  Discount({
    this.present,
    this.presentText,
    this.percents,
    this.fullPrice,
    this.finalPrice,
    required this.validTo,
  });
}
