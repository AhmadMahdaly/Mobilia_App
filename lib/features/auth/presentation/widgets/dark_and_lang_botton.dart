import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/common/animation/animation_do.dart';
import 'package:mobilia/core/extensions/context_extension.dart';

class DarkAndLangBotton extends StatelessWidget {
  const DarkAndLangBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Dark mode button
        CustomFadeInRight(
          duration: 500,
          child: Container(
            alignment: Alignment.center,
            width: 40.w,
            height: 40.h,
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 8.h,
            ),
            decoration: ShapeDecoration(
              color: context.color.buttonBackgroungColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  5.sp,
                ),
              ),
              shadows: [
                BoxShadow(
                  color: context.color.mainColor!,
                  blurRadius: 1,
                  blurStyle: BlurStyle.solid,
                ),
              ],
            ),
            child: Image.asset(
              'assets/icon/day-and-night.png',
              height: 34.sp,
              color: context.color.buttonTextColor,
            ),
          ),
        ),

        /// Language button
        CustomFadeInLeft(
          duration: 500,
          child: Container(
            alignment: Alignment.center,
            width: 40.w,
            height: 40.h,
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 8.h,
            ),
            decoration: ShapeDecoration(
              color: context.color.buttonBackgroungColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  5.sp,
                ),
              ),
              shadows: [
                BoxShadow(
                  color: context.color.mainColor!,
                  blurRadius: 1,
                  blurStyle: BlurStyle.solid,
                ),
              ],
            ),
            child: Image.asset(
              'assets/icon/globe.png',
              height: 30.h,
              color: context.color.buttonTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
