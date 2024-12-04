import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/common/animation/animation_do.dart';
import 'package:mobilia/core/common/widgets/custom_button.dart';
import 'package:mobilia/core/extensions/context_extension.dart';
import 'package:mobilia/core/routes/app_routes.dart';
import 'package:mobilia/core/style/fonts/font_weight_helper.dart';
import 'package:mobilia/features/auth/presentation/widgets/custom_tem_text_field.dart';

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

                /// Name
                CustomFadeInRight(
                  duration: 500,
                  child: Text(
                    'الاسم',
                    style: TextStyle(
                      color: context.color.headColor,
                      fontSize: 16,
                      fontFamily: 'Avenir Arabic',
                      fontWeight: FontWeightHelper.medium,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomFadeInLeft(
                  duration: 500,
                  child: Row(
                    children: [
                      const Flexible(
                        child: CustomTTextField(
                          hintText: 'الاسم الأول',
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Flexible(
                        child: CustomTTextField(
                          hintText: 'اسم العائلة',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),

                /// Phone
                CustomFadeInRight(
                  duration: 500,
                  child: Text(
                    'الهاتف',
                    style: TextStyle(
                      color: context.color.headColor,
                      fontSize: 16,
                      fontFamily: 'Avenir Arabic',
                      fontWeight: FontWeightHelper.medium,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomFadeInLeft(
                  duration: 500,
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          alignment: Alignment.center,
                          width: 70.w,
                          height: 55.h,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: context.color.hintColor!,
                              ),
                              borderRadius: BorderRadius.circular(
                                15.sp,
                              ),
                            ),
                          ),
                          child: Text(
                            '+2',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Avenir Arabic',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Flexible(
                        fit: FlexFit.tight,
                        flex: 5,
                        child: CustomTTextField(
                          hintText: 'رقم الهاتف',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),

                /// Email
                CustomFadeInRight(
                  duration: 500,
                  child: Text(
                    'البريد الإلكتروني',
                    style: TextStyle(
                      color: context.color.headColor,
                      fontSize: 16,
                      fontFamily: 'Avenir Arabic',
                      fontWeight: FontWeightHelper.medium,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomFadeInLeft(
                  duration: 500,
                  child: CustomTTextField(
                    hintText: 'البريد الالكتروني',
                    obscureText: false,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),

                /// Password
                CustomFadeInRight(
                  duration: 500,
                  child: Text(
                    'كلمة المرور',
                    style: TextStyle(
                      color: context.color.headColor,
                      fontSize: 16,
                      fontFamily: 'Avenir Arabic',
                      fontWeight: FontWeightHelper.medium,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomFadeInLeft(
                  duration: 500,
                  child: CustomTTextField(
                    hintText: 'كلمة المرور',
                    icon: Icon(
                      Icons.visibility_outlined,
                      color: context.color.hintColor,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),

                /// Confirm Password
                CustomFadeInRight(
                  duration: 500,
                  child: Text(
                    'تأكيد كلمة المرور',
                    style: TextStyle(
                      color: context.color.headColor,
                      fontSize: 16,
                      fontFamily: 'Avenir Arabic',
                      fontWeight: FontWeightHelper.medium,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomFadeInLeft(
                  duration: 500,
                  child: CustomTTextField(
                    hintText: 'تأكيد كلمة المرور',
                    icon: Icon(
                      Icons.visibility_outlined,
                      color: context.color.hintColor,
                    ),
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: SizedBox(
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
          ),
        ),
      ),
    );
  }
}
