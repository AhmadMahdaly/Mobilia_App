import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/common/animation/animation_do.dart';
import 'package:mobilia/core/common/widgets/custom_text_field.dart';
import 'package:mobilia/core/extensions/context_extension.dart';
import 'package:mobilia/core/utils/app_regex.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Email
        CustomFadeInRight(
          duration: 450,
          child: Text(
            'البريد الإلكتروني',
            style: TextStyle(
              color: context.color.headColor,
              fontSize: 16.sp,
              fontFamily: 'Avenir Arabic',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 10.sp,
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
          height: 16.sp,
        ),

        /// Password
        CustomFadeInRight(
          duration: 450,
          child: Text(
            'كلمة المرور',
            style: TextStyle(
              color: context.color.headColor,
              fontSize: 16.sp,
              fontFamily: 'Avenir Arabic',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 10.sp,
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
          height: 10.sp,
        ),
      ],
    );
  }
}
