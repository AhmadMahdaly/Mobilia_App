import 'package:flutter/material.dart';
import 'package:mobilia/core/style/colors/colors_dark.dart';
import 'package:mobilia/core/style/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.mainColor,
    required this.backgroungColor,
    required this.buttonBackgroungColor,
    required this.buttonTextColor,
    required this.titleColor,
    required this.titleCategoryColor,
    required this.headColor,
    required this.hintColor,
    required this.borderInActiveColor,
    required this.borderActiveColor,
  });

  final Color? mainColor;
  final Color? backgroungColor;
  final Color? buttonBackgroungColor;
  final Color? buttonTextColor;
  final Color? titleColor;
  final Color? titleCategoryColor;
  final Color? headColor;
  final Color? hintColor;

  final Color? borderInActiveColor;
  final Color? borderActiveColor;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? mainColor,
    Color? backgroungColor,
    Color? buttonBackgroungColor,
    Color? buttonTextColor,
    Color? titleColor,
    Color? titleCategoryColor,
    Color? headColor,
    Color? hintColor,
    Color? borderInActiveColor,
    Color? borderActiveColor,
  }) {
    return MyColors(
      mainColor: mainColor,
      backgroungColor: backgroungColor,
      buttonBackgroungColor: buttonBackgroungColor,
      buttonTextColor: buttonTextColor,
      titleColor: titleColor,
      titleCategoryColor: titleCategoryColor,
      headColor: headColor,
      hintColor: hintColor,
      borderInActiveColor: borderInActiveColor,
      borderActiveColor: borderActiveColor,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      mainColor: mainColor,
      backgroungColor: backgroungColor,
      buttonBackgroungColor: buttonBackgroungColor,
      buttonTextColor: buttonTextColor,
      titleColor: titleColor,
      titleCategoryColor: titleCategoryColor,
      headColor: headColor,
      hintColor: hintColor,
      borderInActiveColor: borderInActiveColor,
      borderActiveColor: borderActiveColor,
    );
  }

  static const MyColors dark = MyColors(
    mainColor: ColorsDark.mainColorDark,
    backgroungColor: ColorsDark.backgroungColorDark,
    buttonBackgroungColor: ColorsDark.buttonBackgroungColorDark,
    buttonTextColor: ColorsDark.buttonTextColorDark,
    titleColor: ColorsDark.titleColorDark,
    titleCategoryColor: ColorsDark.titleCategoryColorDark,
    headColor: ColorsDark.headColorDark,
    hintColor: ColorsDark.hintColorDark,
    borderInActiveColor: ColorsDark.borderInActiveColorDark,
    borderActiveColor: ColorsDark.borderActiveColorDark,
  );

  static const MyColors light = MyColors(
    mainColor: ColorsLight.mainColorLight,
    backgroungColor: ColorsLight.backgroungColorLight,
    buttonBackgroungColor: ColorsLight.buttonBackgroungColorLight,
    buttonTextColor: ColorsLight.buttonTextColorLight,
    titleColor: ColorsLight.titleColorLight,
    titleCategoryColor: ColorsLight.titleCategoryColorLight,
    headColor: ColorsLight.headColorLight,
    hintColor: ColorsLight.hintColorLight,
    borderInActiveColor: ColorsLight.borderInActiveColorLight,
    borderActiveColor: ColorsLight.borderActiveColorLight,
  );
}
