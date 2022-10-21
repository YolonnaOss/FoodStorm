import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodstorm/food_storm.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const FoodStorm());
}
