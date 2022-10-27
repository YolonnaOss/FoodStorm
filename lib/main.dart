import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models/favorite_hive_model.dart';
import 'package:foodstorm/food_storm_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:foodstorm/helper/constants.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  await Hive.initFlutter();

  Hive.openBox<HiveCardModel>(KeyConst.favorite);
  Hive.registerAdapter(HiveCardModelAdapter());
  Hive.registerAdapter(HiveDiscountAdapter());

  runApp(
    const FoodStormApp(),
  );
}
