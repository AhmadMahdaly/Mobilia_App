import 'package:flutter/material.dart';
import 'package:mobilia/core/common/screens/page_under_build_screen.dart';
import 'package:mobilia/core/routes/base_route.dart';
import 'package:mobilia/features/auth/presentation/refactors/sign_up_body.dart';
import 'package:mobilia/features/auth/presentation/screens/login_screen.dart';

class AppRoutes {
  const AppRoutes._();

  /// مثال
  static const String signUp = 'SignUp';
  static const String login = 'Login';
  //
  static Route<void> onGenerateRoute(RouteSettings settings) {
    ///نحتاجه لو اردنا تمرير داتا مع الروت
    final args = settings.arguments;
    switch (settings.name) {
      case signUp:
        return BaseRoute(
          page: const SignUpBody(),
        );
      case login:
        return BaseRoute(
          page: const LoginScreen(),
        );
      default:
        return BaseRoute(
          page: const PageUnderBuildScreen(),
        );
    }
  }
}
