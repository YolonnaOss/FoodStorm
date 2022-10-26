import 'dart:io';

import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/models/favorite_hive_model.dart';

class FavoriteProvider extends ChangeNotifier {
  addPostToFavorite(
    String documentName,
    String uid,
    String title,
    String created,
    String image,
    String author,
    String text,
    String address,
    String phone,
    BuildContext context,
  ) {
    final favoritePost = HivePostModel()
      ..documentName = documentName
      ..uid = uid
      ..title = title
      ..created = created
      ..image = image
      ..author = author
      ..text = text
      ..address = address
      ..phone = phone;

    final box = Boxes.getCardsFromFavorite();
    if (box.containsKey(documentName)) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            S.of(context).also_in_favorite,
            style: const TextStyle(
              fontFamily: FontsConst.regular,
            ),
          ),
        ),
      );
    } else {
      box.put(documentName, favoritePost);
      box.values;
      box.keys;
      Platform.isAndroid
          ? showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog();
              })
          : Scaffold.of(context)(
              SnackBar(
                content: Text(
                  S.of(context).add_to_favorite,
                  style: const TextStyle(
                    fontFamily: FontsConst.regular,
                  ),
                ),
              ),
            );
    }
  }

  // Future<void> deletePost(String documentName, BuildContext context) async {
  //   final box = Hive.box<HivePostModel>(KeysConst.favorite);
  //   await box.delete(documentName).whenComplete(
  //         () => ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(
  //             content: Text(
  //               S.of(context).delete_from_favorite,
  //               style: const TextStyle(
  //                 fontFamily: FontsConst.regular,
  //               ),
  //             ),
  //           ),
  //         ),
  //       );
  // }
}

class Boxes {
  static Box<HiveCardsModel> getCardsFromFavorite() =>
      Hive.box<HiveCardsModel>(KeyConst.favorite);
}
