import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/info');
    });

    return Scaffold(
      backgroundColor: const Color(0xFF08215E),
      body: Center(
        child: Image.asset(
          "assets/icons/logo.png",
          height: 223.h,
          width: 196.w,
        ),
      ),
    );
  }
}
