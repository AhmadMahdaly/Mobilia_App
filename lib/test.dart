import 'package:flutter/material.dart';
import 'package:mobilia/core/extensions/context_extension.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'data',
          style: context.textStyle,
        ),
      ),
    );
  }
}
