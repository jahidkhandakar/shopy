import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/screens/user-panel/main_screen.dart';
import '/utils/app_constant.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //*Methods------------------------------------------
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Get.offAll(() => MainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.appSecondaryColor,
      appBar: AppBar(
        backgroundColor: AppConstant.appSecondaryColor,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Lottie.asset('assets/images/cart3.json'),
                width: Get.width,
                alignment: Alignment.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: Get.width,
              child: Text(
                AppConstant.poweredBy,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: AppConstant.appTextColor,
                ),
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
