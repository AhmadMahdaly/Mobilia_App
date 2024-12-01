import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoNetworkScreen extends StatelessWidget {
  const NoNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/no_internet.svg'),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                width: 347,
                child: Text(
                  'يبدو أن هناك خطأ ما في الاتصال بالشبكة، برجاء المحاولة مرة أخرى',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF9DB2CE),
                    fontSize: 20,
                    fontFamily: 'Avenir Arabic',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
