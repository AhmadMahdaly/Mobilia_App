import 'package:flutter/material.dart';
import 'package:mobilia/core/style/colors/colors_dark.dart';
import 'package:mobilia/core/style/colors/colors_light.dart';
import 'package:mobilia/core/style/fonts/font_family_helper.dart';
import 'package:mobilia/core/style/theme/color_extension.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.backgroungColorDark,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.dark,
      //  MyAssets.dark,
    ],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.backgroungColorDark,
        fontFamily: FontFamilyHelper.getLocalizationFontFamily(),
      ),
    ),
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.backgroungColorLight,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.light,
      //  MyAssets.light
    ],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsLight.backgroungColorLight,
        fontFamily: FontFamilyHelper.getLocalizationFontFamily(),
      ),
    ),
  );
}
