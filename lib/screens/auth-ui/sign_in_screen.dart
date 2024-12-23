import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '/screens/auth-ui/sign_up_screen.dart';
import '/utils/app_constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstant.appMainColor,
            centerTitle: true,
            title: Text(
              "Sign In",
              style: TextStyle(
                color: AppConstant.appTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          body: Container(
            child: Column(
              children: [
                isKeyboardVisible
                    ? Text(
                        "Welcome to Shopy",
                        style: TextStyle(
                            color: AppConstant.appSecondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                        ),
                      )
                    : Column(
                        children: [
                          Lottie.asset('assets/images/cart3.json'),
                        ],
                      ),
                SizedBox(
                  height: Get.height / 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        cursorColor: AppConstant.appMainColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email),
                            contentPadding: EdgeInsets.only(top: 2, left: 8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                  ),
                ),
                SizedBox(
                  height: Get.height / 960,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        cursorColor: AppConstant.appMainColor,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: Icon(Icons.visibility_off),
                            contentPadding: EdgeInsets.only(top: 2, left: 8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: AppConstant.appMainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //*Sing In button_____________________________________________
                SizedBox(
                  height: Get.height / 60,
                ),
                Material(
                  child: Container(
                    width: Get.width / 3,
                    height: Get.height / 20,
                    decoration: BoxDecoration(
                      color: AppConstant.appTextColor,
                      border: Border.all(
                          color: AppConstant.appSecondaryColor, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: AppConstant.appMainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.offAll(()=>SignUpScreen()),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppConstant.appMainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
