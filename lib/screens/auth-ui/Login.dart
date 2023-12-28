// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecom_flutter/screens/auth-ui/sign-in.dart';
import 'package:ecom_flutter/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppConstant.appSecendryColor,
          centerTitle: true,
          title: const Text(
            "Login-In",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Column(children: [
            isKeyboardVisible
                ? SizedBox.shrink()
                : Column(
                    children: [
                      Lottie.network('https://raw.githubusercontent.com/Warisalikhan786/EasyShopping/main/assets/images/splash-icon.json'),
                    ],
                  ),
                  SizedBox(
                    height: Get.height/50,
                  ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecendryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email_outlined),
                        contentPadding: EdgeInsets.only(top: 2.0,left:8.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                  ),
                )),
                 Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecendryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password_rounded),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                        contentPadding: EdgeInsets.only(top: 2.0,left:8.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                  ),
                )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment:Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: AppConstant.appMainColor,fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                    height: Get.height/50,
                  ),
                  Material(
            child: Container(
              width: Get.width / 3.5,
              height: Get.height / 12,
              decoration: BoxDecoration(
                color: AppConstant.appSecendryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextButton(
                  onPressed: () {},
                  child:Text(
                    "Start Shopping",
                    style: TextStyle(color: AppConstant.appTextColor),
                  )),
            ),
          ),
           SizedBox(
                    height: Get.height/50,
                  ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                    "Don't have a account?",
                    style: TextStyle(color: AppConstant.appMainColor,fontWeight: FontWeight.normal,fontSize: 20),
               ),
                GestureDetector(
                  onTap: ()=> Get.offAll(()=>SignIn()),
                  child: Text(
                      'Sign In',
                      style: TextStyle(color: AppConstant.appMainColor,fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                )
            ],
          )
          ]),
        ),
      );
    });
  }
}
