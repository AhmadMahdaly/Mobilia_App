import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilia/core/app/connectivity_controller.dart';
import 'package:mobilia/core/app/cubit/app_cubit.dart';
import 'package:mobilia/core/app/di/injection_container.dart';
import 'package:mobilia/core/app/env_variables.dart';
import 'package:mobilia/core/common/screens/no_network_screen.dart';
import 'package:mobilia/core/routes/app_routes.dart';
import 'package:mobilia/core/service/shared_preferances/pref_keys.dart';
import 'package:mobilia/core/service/shared_preferances/shared_pref.dart';
import 'package:mobilia/core/style/theme/app_theme.dart';

class MobiliaApp extends StatefulWidget {
  const MobiliaApp({super.key});

  @override
  State<MobiliaApp> createState() => _MobiliaAppState();
}

class _MobiliaAppState extends State<MobiliaApp> {
  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    super.initState();
    initialization();

    localization.init(
      mapLocales: [
        const MapLocale('en', AppLocale.en),
        const MapLocale('ar', AppLocale.ar),
      ],
      initLanguageCode: 'ar',
    );
    localization.onTranslatedLanguage = _onTranslatedLanguage;
  }

// the setState function here is a must to add
  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
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
          return BlocProvider(
            create: (context) => sl<AppCubit>()
              ..changeAppThemeMode(
                sharedMode: SharedPref().getBoolean(PrefKeys.themeMode),
              ),
            child: ScreenUtilInit(
              designSize: const Size(428, 926),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();

                  return MaterialApp(
                    theme: cubit.isDark ? themeLight() : themeDark(),
                    locale: const Locale('ar'),
                    supportedLocales: localization.supportedLocales,
                    localizationsDelegates: localization.localizationsDelegates,
                    debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
                    title: 'MOBILIA',

                    /// روتس التطبيق
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                    initialRoute: AppRoutes.login,
                    //
                    builder: (context, widget) {
                      /// إلغاء الفوكس من التيكس فورم
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return widget!;
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
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

mixin AppLocale {
  static const String title = 'title';

  static const Map<String, dynamic> en = {title: 'Localization'};
  static const Map<String, dynamic> ar = {title: 'العربية'};
}
