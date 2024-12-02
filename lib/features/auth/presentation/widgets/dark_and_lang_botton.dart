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
        CustomFadeInRight(
          duration: 400,
          child: Container(
            alignment: Alignment.center,
            width: 40.sp,
            height: 40.sp,
            padding: EdgeInsets.symmetric(
              horizontal: 5.sp,
              vertical: 8.sp,
            ),
            decoration: ShapeDecoration(
              color: context.color.backgroundTitle,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  5.sp,
                ),
              ),
              // shadows: [
              //   BoxShadow(
              //     color: context.color.mainColor!,
              //     blurRadius: 0,
              //     blurStyle: BlurStyle.inner,
              //     offset: const Offset(
              //       0,
              //       0,
              //     ),
              //   ),
              // ],
            ),
            child: Image.asset(
              'assets/icon/globe.png',
              height: 30.sp,
              color: context.color.textColor,
            ),
          ),
        ),
        CustomFadeInRight(
          duration: 400,
          child: Container(
            alignment: Alignment.center,
            width: 40.sp,
            height: 40.sp,
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 8,
            ),
            decoration: ShapeDecoration(
              color: context.color.backgroundTitle,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  5.sp,
                ),
              ),
              shadows: [
                BoxShadow(
                  color: context.color.mainColor!,
                  blurRadius: 10,
                  blurStyle: BlurStyle.solid,
                  offset: const Offset(
                    0,
                    1,
                  ),
                ),
              ],
            ),
            child: Image.asset(
              'assets/icon/day-and-night.png',
              height: 34.sp,
              color: context.color.textColor,
            ),
          ),
        ),
      ],
    );
  }
}
