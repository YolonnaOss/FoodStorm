import 'dart:io';
import 'package:flutter/material.dart';
import 'package:foodstorm/generated/l10n.dart';
import 'package:foodstorm/widgets/favorite_grid_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/models/favorite_hive_model.dart';
import 'package:foodstorm/providers/favorite_provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final box = Hive.box<HiveCardsModel>(KeyConst.favorite);
    return Scaffold(
      backgroundColor: Theme.of(context).dividerColor,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: Platform.isAndroid
              ? const EdgeInsets.only(
                  top: 10.0,
                  left: 16.0,
                  right: 16.0,
                )
              : const EdgeInsets.only(
                  top: 10.0,
                  left: 20.0,
                  right: 20.0,
                ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).favorites,
                    style: TextStyle(
                      fontFamily: ConstFont.sBold,
                      fontSize: 24.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      S.of(context).clear,
                      style: TextStyle(
                        fontFamily: ConstFont.regularFont,
                        fontSize: 14.0,
                        color: Theme.of(context).primaryColorDark,
                      ),
                    ),
                  ),
                ],
              ),
              ValueListenableBuilder<Box<HiveCardsModel>>(
                valueListenable: Boxes.getCardsFromFavorite().listenable(),
                builder: (
                  BuildContext context,
                  Box<HiveCardsModel> cardBox,
                  Widget? child,
                ) {
                  return cardBox.isEmpty
                      ? Container(
                          child: Column(
                            children: [
                              Text(
                                S.of(context).favorite_is_clear_text,
                              )
                            ],
                          ),
                        )
                      : FavoriteGridWidget(
                          list: box.values.toList().cast<HiveCardsModel>(),
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
