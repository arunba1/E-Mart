import 'package:e_mart/colors.dart';
import 'package:e_mart/consts.dart';
import 'package:e_mart/screens/auth_screen/signup_screen.dart';
import 'package:e_mart/widget_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//creating method for changing screen

  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      //using getx
      Get.to(() => LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 310,
              )),
          40.heightBox,
          applogoWidget(),
          10.heightBox,
          appname.text.fontFamily(bold).size(22).white.make(),
          5.heightBox,
          appversion.text.white.make(),
          const Spacer(),
          credits.text.white.fontFamily(semibold).make(),
          30.heightBox,
          //splash screen UI is completed..
        ]),
      ),
    );
  }
}
