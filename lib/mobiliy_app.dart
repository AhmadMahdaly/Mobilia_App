import 'package:flutter/material.dart';
import 'package:mobilia/core/app/connectivity_controller.dart';
import 'package:mobilia/core/app/env_variables.dart';
import 'package:mobilia/core/common/screens/no_network_screen.dart';
import 'package:mobilia/test.dart';

class MobiliaApp extends StatelessWidget {
  const MobiliaApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// في حالة وجود انترنت متصل
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
            title: 'MOBILIA',
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
