import 'package:flutter/material.dart';
import 'package:mobilia/core/common/screens/page_under_build_screen.dart';
import 'package:mobilia/core/routes/base_route.dart';
import 'package:mobilia/features/auth/presentation/screens/login_screen.dart';
import 'package:mobilia/test.dart';

class AppRoutes {
  const AppRoutes._();

  /// مثال
  static const String testOne = 'TestOne';
  static const String login = 'Login';
  //
  static Route<void> onGenerateRoute(RouteSettings settings) {
    ///نحتاجه لو اردنا تمرير داتا مع الروت
    final args = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(
          page: const Test(),
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
