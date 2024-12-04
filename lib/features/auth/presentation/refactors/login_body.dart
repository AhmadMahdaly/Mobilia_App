import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/common/animation/animation_do.dart';
import 'package:mobilia/core/extensions/context_extension.dart';
import 'package:mobilia/core/routes/app_routes.dart';
import 'package:mobilia/features/auth/presentation/widgets/dark_and_lang_botton.dart';
import 'package:mobilia/features/auth/presentation/widgets/login/login_button.dart';
import 'package:mobilia/features/auth/presentation/widgets/login/login_text_form.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///DarkMode & Lang Button
                const DarkAndLangButton(),
                SizedBox(
                  height: 40.sp,
                ),

                /// Page Title
                Center(
                  child: Text(
                    'MOBILIA.',
                    style: TextStyle(
                      color: context.color.titleColor,
                      fontSize: 40.sp,
                      fontFamily: 'Italiana',
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.sp,
                ),

                /// Head Title
                CustomFadeInRight(
                  duration: 500,
                  child: Text(
                    'تسجيل الدخول لحسابك',
                    style: TextStyle(
                      color: context.color.mainColor,
                      fontSize: 22.sp,
                      fontFamily: 'Avenir Arabic',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),

                /// Email & Password
                const LoginTextForm(),

                /// Password Forgetten
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomFadeInUp(
                    duration: 500,
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
                ),
                SizedBox(
                  height: 42.sp,
                ),

                /// SignIn Button
                const LoginButton(),
                SizedBox(
                  height: 10.sp,
                ),

                /// SignUp route
                Align(
                  child: CustomFadeInUp(
                    duration: 500,
                    child: InkWell(
                      onTap: () => context.pushName(AppRoutes.signUp),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'ليس لديك حساب؟',
                              style: TextStyle(
                                color: context.color.headColor,
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
