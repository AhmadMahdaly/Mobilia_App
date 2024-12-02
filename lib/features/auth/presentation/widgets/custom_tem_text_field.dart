import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/extensions/context_extension.dart';

class CustomTTextField extends StatelessWidget {
  const CustomTTextField({
    required this.hintText,
    required this.icon,
    required this.obscureText,
    super.key,
  });

  final String hintText;
  final Icon icon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      textDirection: TextDirection.rtl,
      cursorColor: context.color.borderColorLight,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: context.color.borderColorLight,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: context.color.borderColorLight!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: context.color.borderColorLight!),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.red),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),

        fillColor: context.color.textColor,
        suffixIcon: icon,
        // prefixIcon:
        hintText: hintText,
        hintStyle: context.textStyle.copyWith(
          color: context.color.borderColorLight,
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
        hintTextDirection: TextDirection.rtl,
        errorStyle: context.textStyle.copyWith(
          color: Colors.red,
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
