// ignore_for_file: file_names, prefer_const_constructors

import 'package:ecom_flutter/utils/app-constant.dart';
import 'package:flutter/material.dart';
class MainSceen extends StatelessWidget {
  const MainSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        title: Text(AppConstant.appMainName),
        centerTitle: true,
      ),
    );
  }
}