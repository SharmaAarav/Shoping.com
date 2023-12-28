// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app-constant.dart';

class WellcomScreen extends StatelessWidget {
  const WellcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstant.appMainColor,
        centerTitle: true,
        title: Text(
          'Welcome to ${AppConstant.appMainName}',
          style: TextStyle(
              color: AppConstant.appTextColor, fontWeight: FontWeight.w400),
        ),
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              child: Lottie.network(
                  'https://raw.githubusercontent.com/Warisalikhan786/EasyShopping/main/assets/images/splash-icon.json')),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "Start Now",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          SizedBox(
            height: Get.height / 12,
          ),
          Material(
            child: Container(
              width: Get.width / 1.2,
              height: Get.height / 12,
              decoration: BoxDecoration(
                color: AppConstant.appSecendryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset('asset/final-google-logo.png',
                      width: Get.width / 12, height: Get.height / 12),
                  label: Text(
                    "Sign in with Google",
                    style: TextStyle(color: AppConstant.appTextColor),
                  )),
            ),
          ),
           SizedBox(
            height: Get.height / 20,
          ),
          Material(
            child: Container(
              width: Get.width / 1.2,
              height: Get.height / 12,
              decoration: BoxDecoration(
                color: AppConstant.appSecendryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.email_outlined,color: AppConstant.appTextColor,),
                  label: Text(
                    "Sign in with Email",
                    style: TextStyle(color: AppConstant.appTextColor),
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
