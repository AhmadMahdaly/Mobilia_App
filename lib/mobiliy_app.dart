import 'package:flutter/material.dart';
import 'package:mobilia/core/app/env_variables.dart';

class MobiliaApp extends StatelessWidget {
  const MobiliaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
      title: 'MOBILIA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(),
    );
  }
}
