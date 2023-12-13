import 'dart:async';

import 'package:ecommerce_app/utils/AppConstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../user-panel/main-screen.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({Key? key}) : super(key: key);

  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainscreen()));
    });
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.appSecondaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstants.appSecondaryColor,
      ),
      body:Column(
        children: [
          Expanded(
            child: Container(
              width: Get.width,
              child: Lottie.asset("assets/images/splash-icon.json"),
            )
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Powered by "+AppConstants.powered,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: AppConstants.appTextColor
            ),),
          )
        ],
      )
    );
  }
}


