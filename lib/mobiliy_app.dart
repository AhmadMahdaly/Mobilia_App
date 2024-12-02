import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/app/connectivity_controller.dart';
import 'package:mobilia/core/app/env_variables.dart';
import 'package:mobilia/core/common/screens/no_network_screen.dart';
import 'package:mobilia/core/routes/app_routes.dart';
import 'package:mobilia/test.dart';

class MobiliaApp extends StatefulWidget {
  const MobiliaApp({super.key});

  @override
  State<MobiliaApp> createState() => _MobiliaAppState();
}

class _MobiliaAppState extends State<MobiliaApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  Future<void> initialization() async {
    // ignore: inference_failure_on_instance_creation
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );

    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    /// في حالة وجود انترنت متصل
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(428, 926),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
              title: 'MoBilia',

              /// روتس التطبيق
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.testOne,
              //
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              home: const Test(),
            ),
          );
        } else {
          /// في حالة عدم وجود انترنت متصل
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
            title: 'No NetWork ',
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
