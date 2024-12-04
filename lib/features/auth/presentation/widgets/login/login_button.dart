import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/common/animation/animation_do.dart';
import 'package:mobilia/core/common/widgets/custom_button.dart';
import 'package:mobilia/core/extensions/context_extension.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 500,
      child: CustomButton(
        onPressed: () {},
        text: 'تسجيل الدخول',
        width: double.infinity,
        height: 56.sp,
        backgroundColor: context.color.mainColor,
      ),
    );
  }
}
