import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/common/animation/animation_do.dart';
import 'package:mobilia/core/extensions/context_extension.dart';
import 'package:mobilia/core/style/fonts/font_weight_helper.dart';
import 'package:mobilia/features/auth/presentation/widgets/sign_up/sign_up_button.dart';
import 'package:mobilia/features/auth/presentation/widgets/sign_up/sign_up_text_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Scaffold(
          /// AppBar
          appBar: AppBar(
            leading: CustomFadeInLeft(
              duration: 500,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: context.color.titleCategoryColor,
                ),
                onPressed: () => context.pop(),
              ),
            ),
            backgroundColor: context.color.backgroungColor,
            centerTitle: true,
            title: CustomFadeInDown(
              duration: 500,
              child: Text(
                'إنشاء حساب جديد',
                style: TextStyle(
                  color: context.color.titleCategoryColor,
                  fontSize: 22.sp,
                  fontFamily: 'Avenir Arabic',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Desc Page
                Align(
                  child: CustomFadeInUp(
                    duration: 500,
                    child: Text(
                      'تأكد من إدخال بياناتك بشكل صحيح',
                      style: TextStyle(
                        color: context.color.hintColor,
                        fontSize: 16.sp,
                        fontFamily: 'Avenir Arabic',
                        fontWeight: FontWeightHelper.medium,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),

                /// Name & Email & Password
                const SignUpTextForm(),
              ],
            ),
          ),
          bottomNavigationBar: const SignUpButton(),
        ),
      ),
    );
  }
}
