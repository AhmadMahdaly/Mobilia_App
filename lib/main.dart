import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mobilia/core/app/bloc_observer.dart';
import 'package:mobilia/core/app/connectivity_controller.dart';
import 'package:mobilia/core/app/di/injection_container.dart';
import 'package:mobilia/core/app/env_variables.dart';
import 'package:mobilia/core/service/shared_preferances/shared_pref.dart';
import 'package:mobilia/mobiliy_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Add Splash_screen
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );

  /// تحقق من الإتصال بالشبكة
  await ConnectivityController.instance.init();

  /// get envVariables
  await EnvVariables.instance.init(
    envType: EnvTypeEnum.dev,
  );

  /// أحيانا تحدث مشكلة إذا لم تكن هذه المفاتيح محددة في الأندرويد
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyAAY9GGwxEkw5k-tjaL8x5hK3ee7sNvJEs',
            appId: '1:817238951019:android:e4a35d1fb9568a0aa1dd2e',
            messagingSenderId: '817238951019',
            projectId: 'mobilia-658c7',
          ),
        )
      : await Firebase.initializeApp();

  /// BloC observer
  Bloc.observer = AppBlocObserver();

  /// Injector
  await setupInjector();

  /// Shared Pref
  await SharedPref().instantiatePreferences();

  /// To make Portrait
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  runApp(
    const MobiliaApp(),
  );
}
