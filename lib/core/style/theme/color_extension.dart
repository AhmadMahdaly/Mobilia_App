import 'package:flutter/material.dart';
import 'package:mobilia/core/style/colors/colors_dark.dart';
import 'package:mobilia/core/style/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors(
      {required this.mainColor,
      required this.backgroungColor,
      required this.titleColor,
      required this.textColor,
      required this.titleCategoryColor,
      required this.fontGray1,
      required this.fontGray2,
      required this.fontGray3,
      required this.borderColorLight,
      required this.backgroundTitle});

  final Color? mainColor;
  final Color? backgroungColor;
  final Color? titleColor;
  final Color? titleCategoryColor;
  final Color? textColor;
  final Color? fontGray1;
  final Color? fontGray2;
  final Color? fontGray3;
  final Color? borderColorLight;
  final Color? backgroundTitle;

  @override
  ThemeExtension<MyColors> copyWith(
      {Color? mainColor,
      Color? backgroungColor,
      Color? titleColor,
      Color? titleCategoryColor,
      Color? textColor,
      Color? fontGray1,
      Color? fontGray2,
      Color? fontGray3,
      Color? backgroundTitle}) {
    return MyColors(
      mainColor: mainColor,
      backgroungColor: backgroungColor,
      titleColor: titleColor,
      textColor: textColor,
      titleCategoryColor: titleCategoryColor,
      fontGray1: fontGray1,
      fontGray2: fontGray2,
      fontGray3: fontGray3,
      borderColorLight: borderColorLight,
      backgroundTitle: backgroundTitle,
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
      titleColor: titleColor,
      textColor: textColor,
      titleCategoryColor: titleCategoryColor,
      fontGray1: fontGray1,
      fontGray2: fontGray2,
      fontGray3: fontGray3,
      borderColorLight: borderColorLight,
      backgroundTitle: backgroundTitle,
    );
  }

  static const MyColors dark = MyColors(
    mainColor: ColorsDark.mainColor,
    backgroungColor: ColorsDark.backgroungColor,
    titleColor: ColorsDark.titleColor,
    textColor: ColorsDark.textColor,
    titleCategoryColor: ColorsDark.titleCategoryColor,
    fontGray1: ColorsDark.fontGray1,
    fontGray2: ColorsDark.fontGray2,
    fontGray3: ColorsDark.fontGray3,
    borderColorLight: ColorsDark.textColor,
    backgroundTitle: ColorsDark.backgroundTitle,
  );

  static const MyColors light = MyColors(
    mainColor: ColorsLight.mainColorLight,
    backgroungColor: ColorsLight.backgroungColorLight,
    titleColor: ColorsLight.titleColorLight,
    textColor: ColorsLight.textColorLight,
    titleCategoryColor: ColorsLight.titleCategoryColorLight,
    fontGray1: ColorsLight.fontGray1Light,
    fontGray2: ColorsLight.fontGray2Light,
    fontGray3: ColorsLight.fontGray3Light,
    borderColorLight: ColorsLight.borderColorLight,
    backgroundTitle: ColorsLight.backgroundTitle,
  );
}
