import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/common/widgets/text_app.dart';
import 'package:mobilia/core/extensions/context_extension.dart';
import 'package:mobilia/core/style/fonts/font_family_helper.dart';
import 'package:mobilia/core/style/fonts/font_weight_helper.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    required this.text,
    required this.width,
    required this.height,
    super.key,
    this.lastRadius,
    this.threeRadius,
    this.backgroundColor,
    this.textColor,
    this.textAlign,
    this.isLoading = false,
    this.loadingWidth = 30,
    this.loadingHeight = 30,
  });
  final VoidCallback onPressed;
  final String text;
  final double width;
  final double height;
  final double? threeRadius;
  final double? lastRadius;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isLoading;
  final TextAlign? textAlign;
  final double? loadingWidth;
  final double? loadingHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(threeRadius ?? 15),
              topRight: Radius.circular(threeRadius ?? 15),
              bottomRight: Radius.circular(threeRadius ?? 15),
              bottomLeft: Radius.circular(lastRadius ?? 15),
            ),
          ),
        ),
        onPressed: onPressed,
        child: TextApp(
          theme: context.textStyle.copyWith(
            color: textColor ?? Colors.white,
            fontWeight: FontWeightHelper.medium,
            fontFamily: FontFamilyHelper.avenirAr,
            fontSize: 16.sp,
          ),
          text: text,
          textAlign: textAlign,
        ),
      ),
    );
  }
}
