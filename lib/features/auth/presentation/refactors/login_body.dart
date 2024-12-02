import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/common/widgets/custom_button.dart';
import 'package:mobilia/core/extensions/context_extension.dart';
import 'package:mobilia/features/auth/presentation/widgets/custom_tem_text_field.dart';
import 'package:mobilia/features/auth/presentation/widgets/dark_and_lang_botton.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 24.sp,
              bottom: 8.sp,
              right: 16.sp,
              left: 16.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const DarkAndLangBotton(),
                SizedBox(
                  height: 40.sp,
                ),
                Center(
                  child: Text(
                    'MOBILIA.',
                    style: TextStyle(
                      color: context.color.fontGray3,
                      fontSize: 40.sp,
                      fontFamily: 'Italiana',
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.sp,
                ),
                Text(
                  'تسجيل الدخول لحسابك',
                  style: TextStyle(
                    color: context.color.mainColor,
                    fontSize: 22.sp,
                    fontFamily: 'Avenir Arabic',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Text(
                  'البريد الإلكتروني',
                  style: TextStyle(
                    color: context.color.fontGray1,
                    fontSize: 16.sp,
                    fontFamily: 'Avenir Arabic',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                CustomTTextField(
                  hintText: 'البريد الالكتروني',
                  icon: Icon(
                    Icons.mail_outline_rounded,
                    color: context.color.borderColorLight,
                  ),
                  obscureText: false,
                ),
                SizedBox(
                  height: 16.sp,
                ),
                Text(
                  'كلمة المرور',
                  style: TextStyle(
                    color: context.color.fontGray1,
                    fontSize: 16.sp,
                    fontFamily: 'Avenir Arabic',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                CustomTTextField(
                  hintText: 'كلمة المرور',
                  icon: Icon(
                    Icons.mail_outline_rounded,
                    color: context.color.borderColorLight,
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyle(
                      color: context.color.mainColor,
                      fontSize: 15.sp,
                      fontFamily: 'Avenir Arabic',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 42.sp,
                ),
                CustomButton(
                  onPressed: () {},
                  text: 'تسجيل الدخول',
                  width: double.infinity,
                  height: 56.sp,
                  backgroundColor: context.color.mainColor,
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Align(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'ليس لديك حساب؟',
                          style: TextStyle(
                            color: context.color.fontGray1,
                            fontSize: 16.sp,
                            fontFamily: 'Avenir Arabic',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' أنشىء حسابك الآن',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
