import 'package:ecommerce_app/screens/auth-ui/email_login.dart';
import 'package:ecommerce_app/utils/AppConstant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Mainscreen extends StatefulWidget {
   Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  AppConstants app=new AppConstants();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppConstants.appSecondaryColor,
        centerTitle: true,
        elevation: 0,
        title: Text("Welcome to "+AppConstants.apMainpname),
      ),
      body: Column(
        children: [
          Container(
            child: Lottie.asset("assets/images/splash-icon.json"),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text("Happy Shopping", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
          ),

          GestureDetector(
            onTap: (){

            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left:70,top:60, right: 50),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppConstants.appSecondaryColor,
              ),
              child: Row(
                children: [
                  Container(
                    width:30,
                    child: Image.asset("assets/images/google.png"),
                  ),
                  Text("   Sign in With Google", style: TextStyle(color: AppConstants.appTextColor, fontSize: 20),)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Email_login()));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left:70,top:40, right: 50),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppConstants.appSecondaryColor,
              ),
              child: Row(
                children: [
                  Container(
                    width:30,
                    child: Icon(Icons.email, color: AppConstants.appTextColor,),
                  ),
                  Text("   Sign in With Email", style: TextStyle(color: AppConstants.appTextColor, fontSize: 20),)
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
