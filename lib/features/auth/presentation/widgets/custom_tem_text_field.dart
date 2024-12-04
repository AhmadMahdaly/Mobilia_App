import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/extensions/context_extension.dart';

class CustomTTextField extends StatelessWidget {
  const CustomTTextField({
    required this.hintText,
    this.icon,
    this.obscureText,
    super.key,
  });

  final String hintText;
  final Icon? icon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextField(
        obscureText: obscureText ?? false,
        cursorColor: context.color.mainColor,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: context.color.hintColor,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.sp,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.sp,
            ),
            borderSide: BorderSide(
              color: context.color.hintColor!,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.sp,
            ),
            borderSide: BorderSide(
              color: context.color.mainColor!,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.sp,
            ),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.sp,
            ),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),

          fillColor: context.color.hintColor,
          prefixIcon: icon,
          // prefixIcon:
          hintText: hintText,
          hintStyle: context.textStyle.copyWith(
            color: context.color.hintColor,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),

          errorStyle: context.textStyle.copyWith(
            color: Colors.red,
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}
