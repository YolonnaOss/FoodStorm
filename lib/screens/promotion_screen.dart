import 'dart:io';
import '../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/widgets/cards_list_widget.dart';
import 'package:foodstorm/widgets/choise_chips_widget.dart';
import 'package:foodstorm/widgets/main_app_bar_widget.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).highlightColor,
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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const MainAppBarWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 43.0,
                  child: TextField(
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      focusColor: Theme.of(context).primaryColorLight,
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        borderSide: BorderSide(
                          color: Theme.of(context).splashColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        borderSide: BorderSide(
                          color: Theme.of(context).splashColor,
                        ),
                      ),
                      filled: true,
                      hintText: Text(
                        S.of(context).find_for_promotions,
                        style: TextStyle(
                          fontFamily: ConstFont.sReg,
                        ),
                      ).data,
                      hintStyle: const TextStyle(
                        fontSize: 15.0,
                      ),
                      fillColor: Theme.of(context).primaryColorLight,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25.0,
                        color: Theme.of(context).shadowColor,
                      ),
                    ),
                  ),
                ),
              ),
              const ChoiseChipsWidget(),
              const CardsListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
