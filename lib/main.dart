import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodstorm/food_storm.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();

  runApp(
    const FoodStorm(),
  );
}
