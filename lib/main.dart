import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobilia/mobiliy_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyAAY9GGwxEkw5k-tjaL8x5hK3ee7sNvJEs",
            appId: "1:817238951019:android:e4a35d1fb9568a0aa1dd2e",
            messagingSenderId: "817238951019",
            projectId: "mobilia-658c7",
          ),
        )
      : await Firebase.initializeApp();
  runApp(const MobiliaApp());
}
