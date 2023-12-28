// ignore_for_file: unused_local_variable, file_names, prefer_const_constructors

import 'dart:async';

import 'package:ecom_flutter/screens/auth-ui/welcome.dart';
import 'package:ecom_flutter/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Get.offAll(()=> WellcomScreen());
     });
    
  }
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstant.appSecendryColor,
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: Get.width,
              alignment: Alignment.center,
              child: Lottie.network('https://raw.githubusercontent.com/Warisalikhan786/EasyShopping/main/assets/images/splash-icon.json'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: Get.width,
            alignment: Alignment.center,
            child: Text(AppConstant.appPoweredBy,
            style: TextStyle(fontWeight: FontWeight.bold 
            ,fontSize: 20,
            color: AppConstant.appTextColor),)
          )
        ],
      ),
    );
  }
}