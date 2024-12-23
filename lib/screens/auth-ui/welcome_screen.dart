import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '/utils/app_constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Welcome to Shopy",
          style: TextStyle(
              color: AppConstant.appTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Lottie.asset('assets/images/cart3.json'),
            ),
            Container(
              child: Text(
                "Happy Shopping" + String.fromCharCodes([0x1F60A]),
                style: TextStyle(
                  color: AppConstant.appMainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),

            //*Sign In Buttons
            Material(
              child: Container(
                width: Get.width / 1.4,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appTextColor,
                  border: Border.all(
                      color: AppConstant.appSecondaryColor, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton.icon(
                  icon: Image.asset(
                    'assets/images/google.png',
                    height: Get.height / 12,
                    width: Get.width / 12,
                  ),
                  onPressed: () {},
                  label: Text(
                    "Sign in with Google",
                    style: TextStyle(
                      color: AppConstant.appMainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 120,
            ),
            Material(
              child: Container(
                width: Get.width / 1.4,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appTextColor,
                  border: Border.all(
                      color: AppConstant.appSecondaryColor, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton.icon(
                  icon: Image.asset(
                    'assets/images/email.png',
                    height: Get.height / 12,
                    width: Get.width / 12,
                  ),
                  onPressed: () {},
                  label: Text("Sign in with Email",
                    style: TextStyle(
                      color: AppConstant.appMainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
