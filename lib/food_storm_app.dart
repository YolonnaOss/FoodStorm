import 'dart:io';
import 'generated/l10n.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:foodstorm/helper/themes.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:foodstorm/providers/map_provider.dart';
import 'package:foodstorm/providers/app_bar_provider.dart';
import 'package:foodstorm/providers/favorite_provider.dart';
import 'package:foodstorm/screens/add_promotion_screen.dart';
import 'package:foodstorm/providers/about_card_provider.dart';
import 'package:foodstorm/providers/promotion_provider.dart';
import 'package:foodstorm/providers/add_promotion_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:foodstorm/widgets/material_bottom_bar_widget.dart';
import 'package:foodstorm/widgets/cupertino_bottom_bar_widget.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:foodstorm/providers/material_bottom_bar_provider.dart';
import 'package:foodstorm/providers/cupertino_bottom_bar_provider.dart';

class FoodStormApp extends StatelessWidget {
  const FoodStormApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MaterialBottomBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CupertinoBottommBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AppBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => PromotionProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => MapProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavoriteProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AboutCardProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AddPromotionProvider(),
        ),
      ],
      child: AdaptiveTheme(
        initial: AdaptiveThemeMode.light,
        light: Themes.light,
        dark: Themes.dark,
        builder: (light, dark) {
          return Sizer(
            builder: (BuildContext _, Orientation orientation,
                DeviceType deviceType) {
              return MaterialApp(
                theme: light,
                darkTheme: dark,
                scrollBehavior: const ScrollBehavior(),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                initialRoute: '',
                routes: {
                  '/addstock': (context) => const AddPromotion(),
                },
                home: AnimatedSplashScreen(
                  curve: Curves.easeInOutCubic,
                  backgroundColor: const Color.fromRGBO(60, 180, 110, 1.0),
                  splashTransition: SplashTransition.fadeTransition,
                  duration: 1500,
                  nextScreen: Platform.isAndroid
                      ? const MaterialBottomBarWidget()
                      : const CupertinoBottomTabBarWidget(),
                  splash: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '%',
                          style: TextStyle(
                            fontSize: 50.sp,
                            fontWeight: FontWeight.w800,
                            fontFamily: ConstFont.regularFont,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Text(
                          'Food Storm',
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: ConstFont.regularFont,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
