import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/common/animation/animation_do.dart';
import 'package:mobilia/core/common/widgets/custom_text_field.dart';
import 'package:mobilia/core/extensions/context_extension.dart';
import 'package:mobilia/core/style/fonts/font_weight_helper.dart';
import 'package:mobilia/core/utils/app_regex.dart';
import 'package:mobilia/features/auth/presentation/widgets/custom_tem_text_field.dart';

class SignUpTextForm extends StatefulWidget {
  const SignUpTextForm({super.key});

  @override
  State<SignUpTextForm> createState() => _SignUpTextFormState();
}

class _SignUpTextFormState extends State<SignUpTextForm> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              Flexible(
                child: CustomTextField(
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  hintText: 'الاسم الأول',
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 2) {
                      return 'الاسم غير صالح';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Flexible(
                child: CustomTextField(
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  hintText: 'اسم العائلة',
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 2) {
                      return 'الاسم غير صالح';
                    }
                    return null;
                  },
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
              Flexible(
                fit: FlexFit.tight,
                flex: 5,
                child: CustomTextField(
                  controller: TextEditingController(),
                  keyboardType: TextInputType.number,
                  hintText: 'رقم الهاتف',
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 9) {
                      return 'الرقم غير صالح';
                    }
                    return null;
                  },
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
        CustomFadeInLeft(
          duration: 500,
          child: CustomTextField(
            hintText: 'البريد الالكتروني',
            prefixIcon: Icon(
              Icons.mail_outline_rounded,
              color: context.color.hintColor,
            ),
            controller: TextEditingController(),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (!AppRegex.isEmailValid(
                '',

                /// controller
              )) {
                return 'البريد الإلكتروني غير صالح';
              }
              return null;
            },
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
          child: CustomTextField(
            controller: TextEditingController(),
            hintText: 'كلمة المرور',
            prefixIcon: IconButton(
              onPressed: () => setState(() {
                isShowPassword = !isShowPassword;
              }),
              icon: isShowPassword
                  ? Icon(
                      Icons.visibility_off_outlined,
                      color: context.color.hintColor,
                    )
                  : Icon(
                      Icons.visibility_outlined,
                      color: context.color.hintColor,
                    ),
            ),
            obscureText: isShowPassword,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return 'كلمة المرور غير صالحة';
              }
              return null;
            },
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
          child: CustomTextField(
            controller: TextEditingController(),
            hintText: 'كلمة المرور',
            prefixIcon: IconButton(
              onPressed: () => setState(() {
                isShowPassword = !isShowPassword;
              }),
              icon: isShowPassword
                  ? Icon(
                      Icons.visibility_off_outlined,
                      color: context.color.hintColor,
                    )
                  : Icon(
                      Icons.visibility_outlined,
                      color: context.color.hintColor,
                    ),
            ),
            obscureText: isShowPassword,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return 'كلمة المرور غير صالحة';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
