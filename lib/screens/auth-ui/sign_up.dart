import 'package:ecommerce_app/screens/auth-ui/email_login.dart';
import 'package:ecommerce_app/utils/AppConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class Sign_up extends StatefulWidget {
  Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _MainscreenState();
}

class _MainscreenState extends State<Sign_up> {
  AppConstants app=new AppConstants();

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible){
      return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppConstants.appSecondaryColor,
            centerTitle: true,
            elevation: 0,
            title: Text("Sign in With Email"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height/20
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Welocme to Ecomm App", style: TextStyle(color: AppConstants.appSecondaryColor, fontSize: 18),),
                ),

                SizedBox(
                  height: Get.height/20,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: AppConstants.appSecondaryColor,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppConstants.appSecondaryColor), // Change the color here
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey), // Change the color here
                          ),
                          prefixIcon: Icon(Icons.email, color: Colors.grey,),
                          hintText: ("Email"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: AppConstants.appSecondaryColor,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppConstants.appSecondaryColor), // Change the color here
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey), // Change the color here
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.grey,),
                          hintText: ("Username"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: AppConstants.appSecondaryColor,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppConstants.appSecondaryColor), // Change the color here
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey), // Change the color here
                          ),
                          prefixIcon: Icon(Icons.email, color: Colors.grey,),
                          hintText: ("Phe number"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: AppConstants.appSecondaryColor,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppConstants.appSecondaryColor), // Change the color here
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey), // Change the color here
                          ),
                          prefixIcon: Icon(Icons.password, color: Colors.grey,),
                          hintText: ("Password"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          suffixIcon: Icon(Icons.visibility_off, )
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: Get.width,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: AppConstants.appSecondaryColor,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppConstants.appSecondaryColor), // Change the color here
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey), // Change the color here
                          ),
                          prefixIcon: Icon(Icons.password, color: Colors.grey,),
                          hintText: ("Password"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          suffixIcon: Icon(Icons.visibility_off, )
                      ),
                    ),
                  ),
                ),


                //forgot password

                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?", style: TextStyle(color: AppConstants.appSecondaryColor, fontSize: 16),),
                  ),
                ),

                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left:70,top:40, right: 50),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppConstants.appSecondaryColor,
                      ),
                      child:
                      Text("Sign Up", style: TextStyle(color: AppConstants.appTextColor, fontSize: 20),)

                  ),
                ),


                SizedBox(
                  height: Get.height/20,
                ),

                Container(
                  margin: EdgeInsets.only(left: 50),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Text("Dont you already have an account?  ", style: TextStyle(fontSize: 16,color: AppConstants.appSecondaryColor),),


                      Container(
                          child: Container(
                            child: GestureDetector(
                              onTap: ()=> Get.offAll(()=>Email_login()),
                              child: Text(
                                'Sign In',
                                style: TextStyle(fontSize: 16,color: AppConstants.appSecondaryColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppConstants.appSecondaryColor, // Change the color here
                                  decorationThickness: 1.0, // Change the thickness here
                                ),
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      );
    });
  }
}
