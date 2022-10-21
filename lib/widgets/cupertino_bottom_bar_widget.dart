import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodstorm/generated/l10n.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/screens/map_screen.dart';
import 'package:foodstorm/screens/favorite_screen.dart';
import 'package:foodstorm/screens/promotion_screen.dart';
import 'package:foodstorm/helper/icons/storm_icons_icons.dart';
import 'package:foodstorm/providers/cupertino_bottom_bar_provider.dart';

class CupertinoBottomTabBarWidget extends StatefulWidget {
  const CupertinoBottomTabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  CupertinoPageState createState() => CupertinoPageState();
}

class CupertinoPageState extends State<CupertinoBottomTabBarWidget> {
  @override
  Widget build(BuildContext context) {
    final iosBottomProvider = Provider.of<CupertinoBottommBarProvider>(context);

    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        controller: iosBottomProvider.pageController,
        resizeToAvoidBottomInset: false,
        tabBar: CupertinoTabBar(
          backgroundColor: Theme.of(context).backgroundColor,
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: Theme.of(context).indicatorColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(
                StormIcons.discount_empty,
              ),
              label: Text(
                S.of(context).promotions,
                style: TextStyle(
                  fontFamily: ConstFont.sReg,
                ),
              ).data,
            ),
            BottomNavigationBarItem(
              label: Text(
                S.of(context).map,
                style: TextStyle(
                  fontFamily: ConstFont.sReg,
                ),
              ).data,
              icon: const Icon(
                StormIcons.map_marker_empty,
              ),
            ),
            BottomNavigationBarItem(
              label: Text(
                S.of(context).favorites,
                style: TextStyle(
                  fontFamily: ConstFont.sReg,
                ),
              ).data,
              icon: const Icon(
                StormIcons.heart_counter_grey,
              ),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, index) {
          return const [
            PromotionScreen(),
            MapScreen(),
            FavoriteScreen(),
          ][index];
        },
      ),
    );
  }
}
