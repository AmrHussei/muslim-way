import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/utils/constant.dart';
import 'package:muslim_way/features/home/presentation/view/home_screen.dart';
import 'package:muslim_way/features/auth/presentation/view/get_start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navToGetStartScreen();
  }

  void navToGetStartScreen() {
    Future.delayed(
      const Duration(seconds: 2),
      (() {
        FirebaseAuth.instance.authStateChanges().listen((user) {
          if (user == null) {
            Get.offAll(const StartScreen(),
                transition: Transition.zoom, duration: transitionDuration);
          } else {
            Get.offAll(const HomeScreen(),
                transition: Transition.zoom, duration: transitionDuration);
          }
        });
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset(
            splashLogo,
            height: 249.h,
            width: 274.w,
          ),
        ),
      ),
    );
  }
}
