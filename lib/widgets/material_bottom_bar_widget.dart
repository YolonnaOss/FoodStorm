import '../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:foodstorm/screens/map_screen.dart';
import 'package:foodstorm/screens/favorite_screen.dart';
import 'package:foodstorm/screens/promotion_screen.dart';
import 'package:foodstorm/helper/icons/storm_icons_icons.dart';
import 'package:foodstorm/providers/material_bottom_bar_provider.dart';

class MaterialBottomBarWidget extends StatefulWidget {
  const MaterialBottomBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MaterialBottomBarWidget> createState() =>
      _MaterialBottomBarWidgetState();
}

class _MaterialBottomBarWidgetState extends State<MaterialBottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    final tabBarProvider = Provider.of<MaterialBottomBarProvider>(context);
    return Scaffold(
      body: PageView(
        controller: tabBarProvider.pageController,
        onPageChanged: tabBarProvider.onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          PromotionScreen(),
          MapScreen(),
          FavoriteScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor:
            Theme.of(context).primaryColorDark.withOpacity(0.6),
        backgroundColor: Theme.of(context).highlightColor,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: tabBarProvider.selectedIndex,
        onTap: tabBarProvider.onItemTapped,
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
    );
  }
}
