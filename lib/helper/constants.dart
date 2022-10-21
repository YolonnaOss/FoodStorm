import 'package:flutter/material.dart';

class ConstFont {
  static String regularFont = 'Gilroy';
  static String sThin = 'SFProDisplay-Thin';
  static String sLight = 'SFProDisplay-Light';
  static String sReg = 'SFProDisplay-Regular';
  static String sMed = 'SFProDisplay-Medium';
  static String sSemB = 'SFProDisplay-Semibold';
  static String sBold = 'SFProDisplay-Bold';
}

class ConstColors {
  static Color starColor = Colors.orange;
}

class SettingsConst {
  static final shadow = BoxDecoration(
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.grey[100]!,
        blurRadius: 4.0,
        spreadRadius: 2.0,
        offset: const Offset(0.0, 0.0),
      ),
    ],
    borderRadius: BorderRadius.circular(20.0),
    color: ColorsConst.white,
  );
}

class ColorsConst {
  static const white = Color(0xFFFFFFFF);
  static const transparent = Color(0x00000000);
  static const blackWithOpacity = Color.fromRGBO(0, 0, 0, 0.3);
}
