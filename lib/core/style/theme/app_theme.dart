import 'package:flutter/material.dart';
import 'package:mobilia/core/style/colors/colors_dark.dart';
import 'package:mobilia/core/style/colors/colors_light.dart';
import 'package:mobilia/core/style/theme/color_extension.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.backgroungColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.dark,
      //  MyAssets.dark,
    ],
    useMaterial3: true,
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.textColor,
        // fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
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
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        // color: ColorsLight.black,
        // fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      ),
    ),
  );
}
