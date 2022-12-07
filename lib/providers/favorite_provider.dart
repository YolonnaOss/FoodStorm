import 'dart:io';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodstorm/generated/l10n.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/models/favorite_hive_model.dart';

class FavoriteProvider extends ChangeNotifier {
  Future<void> addPostToFavorite(
    String documentId,
    int postID,
    int cafeID,
    bool promotion,
    String message,
    String createdAt,
    String image,
    String cafeName,
    String cafeLogo,
    String cafeRating,
    List<dynamic> tags,
    bool present,
    String presentText,
    int percents,
    int fullPrice,
    int finalPrice,
    String validTo,
    BuildContext context,
  ) async {
    final discount = HiveDiscount()
      ..present = present
      ..presentText = presentText
      ..percents = percents
      ..fullPrice = fullPrice
      ..finalPrice = finalPrice
      ..validTo = validTo;

    final hiveCards = HiveCardModel()
      ..postID = postID
      ..cafeID = cafeID
      ..promotion = promotion
      ..message = message
      ..discount = discount
      ..createdAt = createdAt
      ..image = image
      ..cafeName = cafeName
      ..cafeLogo = cafeLogo
      ..cafeRating = cafeRating
      ..tags = tags
      ..documentID = documentId;

    final box = Boxes.getCardsFromFavorite();
    if (box.containsKey(documentId)) {
      notifyListeners();
      return Platform.isAndroid
          ? showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    S.of(context).notification,
                    style: TextStyle(
                      fontFamily: ConstFont.sBold,
                    ),
                  ),
                  content: Text(
                    S.of(context).also_in_favorite,
                    style: TextStyle(
                      fontFamily: ConstFont.sReg,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        S.of(context).ok,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontFamily: ConstFont.sSemB,
                        ),
                      ),
                    )
                  ],
                );
              },
            )
          : showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text(
                    S.of(context).notification,
                    style: TextStyle(
                      fontFamily: ConstFont.sBold,
                    ),
                  ),
                  content: Text(
                    S.of(context).also_in_favorite,
                    style: TextStyle(
                      fontFamily: ConstFont.sReg,
                    ),
                  ),
                  actions: [
                    CupertinoButton(
                      child: Text(
                        S.of(context).ok,
                        style: TextStyle(
                          fontFamily: ConstFont.sSemB,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
    } else {
      box.put(documentId, hiveCards);
      box.values;
      box.keys;
      notifyListeners();
      return Platform.isAndroid
          ? showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    S.of(context).notification,
                    style: TextStyle(
                      fontFamily: ConstFont.sBold,
                    ),
                  ),
                  content: Text(
                    S.of(context).add_to_favorite,
                    style: TextStyle(
                      fontFamily: ConstFont.sReg,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        S.of(context).ok,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontFamily: ConstFont.sSemB,
                        ),
                      ),
                    )
                  ],
                );
              },
            )
          : showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text(
                    S.of(context).notification,
                    style: TextStyle(
                      fontFamily: ConstFont.sBold,
                    ),
                  ),
                  content: Text(
                    S.of(context).add_to_favorite,
                    style: TextStyle(
                      fontFamily: ConstFont.sReg,
                    ),
                  ),
                  actions: [
                    CupertinoButton(
                      child: Text(
                        S.of(context).ok,
                        style: TextStyle(
                          fontFamily: ConstFont.sSemB,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
    }
  }

  Future<void> clearFavorite(
    Box<HiveCardModel> box,
    BuildContext context,
  ) async {
    Platform.isAndroid
        ? showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  S.of(context).attention,
                  style: TextStyle(
                    fontFamily: ConstFont.sBold,
                  ),
                ),
                content: Text(
                  S.of(context).clear_favorite_text,
                  style: TextStyle(
                    fontFamily: ConstFont.sReg,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () async {
                      await box.clear().whenComplete(
                            () => Navigator.pop(context),
                          );
                    },
                    child: Text(
                      S.of(context).yes,
                      style: TextStyle(
                        color: Theme.of(context).errorColor,
                        fontFamily: ConstFont.sSemB,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      S.of(context).no,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontFamily: ConstFont.sSemB,
                      ),
                    ),
                  ),
                ],
              );
            },
          )
        : showCupertinoDialog(
            context: context,
            builder: (BuildContext context) {
              return CupertinoAlertDialog(
                title: Text(
                  S.of(context).attention,
                  style: TextStyle(
                    fontFamily: ConstFont.sBold,
                  ),
                ),
                content: Text(
                  S.of(context).clear_favorite_text,
                  style: TextStyle(
                    fontFamily: ConstFont.sReg,
                  ),
                ),
                actions: [
                  CupertinoButton(
                    child: Text(
                      S.of(context).yes,
                      style: TextStyle(
                        color: Theme.of(context).errorColor,
                        fontFamily: ConstFont.sSemB,
                      ),
                    ),
                    onPressed: () async {
                      await box.clear().whenComplete(
                            () => Navigator.pop(context),
                          );
                    },
                  ),
                  CupertinoButton(
                    child: Text(
                      S.of(context).no,
                      style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontFamily: ConstFont.sSemB,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
  }

  bool checkFavoriteCard(String documentId) {
    final box = Boxes.getCardsFromFavorite();
    if (box.containsKey(documentId)) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> deleteCard(
    BuildContext context,
    String documentID,
    Box<HiveCardModel> box,
  ) async {
    await box.delete(documentID);
  }
}

class Boxes {
  static Box<HiveCardModel> getCardsFromFavorite() =>
      Hive.box<HiveCardModel>(KeyConst.favorite);
}
