import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:foodstorm/generated/l10n.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/models/favorite_hive_model.dart';
import 'package:foodstorm/providers/favorite_provider.dart';
import 'package:foodstorm/widgets/favorite_grid_widget.dart';
import 'package:foodstorm/providers/material_bottom_bar_provider.dart';
import 'package:foodstorm/providers/cupertino_bottom_bar_provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final box = Hive.box<HiveCardModel>(KeyConst.favorite);
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final materialBarProvider = Provider.of<MaterialBottomBarProvider>(context);
    final cupertinoBarProvider =
        Provider.of<CupertinoBottommBarProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).dividerColor,
      body: SafeArea(
        top: true,
        bottom: true,
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
          child: ValueListenableBuilder<Box<HiveCardModel>>(
            valueListenable: Boxes.getCardsFromFavorite().listenable(),
            builder: (
              BuildContext context,
              Box<HiveCardModel> cardBox,
              Widget? child,
            ) {
              return Column(
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
                      cardBox.isNotEmpty
                          ? TextButton(
                              onPressed: () async {
                                await favoriteProvider.clearFavorite(
                                  box,
                                  context,
                                );
                              },
                              child: Text(
                                S.of(context).clear,
                                style: TextStyle(
                                  fontFamily: ConstFont.sReg,
                                  fontSize: 15.0,
                                  color: Theme.of(context).primaryColorDark,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: cardBox.isEmpty
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S.of(context).favorite_is_clear_text,
                                style: TextStyle(
                                  fontFamily: ConstFont.sReg,
                                  fontSize: 19.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 40.0,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 50.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Theme.of(context).cardColor,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    materialBarProvider.backToHome();
                                  },
                                  child: Text(
                                    S.of(context).favorite_is_clear_button,
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      fontFamily: ConstFont.sReg,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : FavoriteGridWidget(
                            list: box.values.toList().cast<HiveCardModel>(),
                            box: box,
                            favoriteProvider: favoriteProvider,
                          ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
