import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/common/animation/animation_do.dart';
import 'package:mobilia/core/common/widgets/custom_button.dart';
import 'package:mobilia/core/extensions/context_extension.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: Column(
        children: [
          CustomFadeInUp(
            duration: 500,
            child: CustomButton(
              onPressed: () {},
              text: 'إنشاء الحساب',
              width: double.infinity,
              height: 56.sp,
              backgroundColor: context.color.mainColor,
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Align(
            child: CustomFadeInUp(
              duration: 500,
              child: InkWell(
                onTap: () => context.pop(),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'لديك حساب بالفعل؟ ',
                        style: TextStyle(
                          color: context.color.headColor,
                          fontSize: 16.sp,
                          fontFamily: 'Avenir Arabic',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'تسجيل الدخول',
                        style: TextStyle(
                          color: context.color.mainColor,
                          fontSize: 16.sp,
                          fontFamily: 'Avenir Arabic',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
