import 'package:hive/hive.dart';

part 'favorite_hive_model.g.dart';

@HiveType(typeId: 0)
class HiveCardModel extends HiveObject {
  @HiveField(0)
  late int? postID;

  @HiveField(1)
  late int? cafeID;

  @HiveField(2)
  late bool? promotion;

  @HiveField(3)
  late String? message;

  @HiveField(4)
  late HiveDiscount? discount;

  @HiveField(5)
  late String? createdAt;

  @HiveField(6)
  late String? image;

  @HiveField(7)
  late String? cafeName;

  @HiveField(8)
  late String? cafeLogo;

  @HiveField(9)
  late String? cafeRating;

  @HiveField(10)
  late List<dynamic?>? tags;

  HiveCardModel({
    this.postID,
    this.cafeID,
    this.promotion,
    this.message,
    this.discount,
    this.createdAt,
    this.image,
    this.cafeName,
    this.cafeLogo,
    this.cafeRating,
    this.tags,
  });
}

@HiveType(typeId: 1)
class HiveDiscount extends HiveObject {
  @HiveField(0)
  bool? present;

  @HiveField(1)
  String? presentText;

  @HiveField(2)
  int? percents;

  @HiveField(3)
  int? fullPrice;

  @HiveField(4)
  int? finalPrice;

  @HiveField(5)
  String? validTo;

  HiveDiscount({
    this.present,
    this.presentText,
    this.percents,
    this.fullPrice,
    this.finalPrice,
    this.validTo,
  });
}
