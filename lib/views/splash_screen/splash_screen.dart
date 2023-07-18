import 'package:ecommerce_app_laravel_flutter/auth_screen/login_screen.dart';
import 'package:ecommerce_app_laravel_flutter/consts/consts.dart';
import 'package:ecommerce_app_laravel_flutter/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating methode  to change screen

  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(()=> const LoginScreen());
    });
  }

@override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg, width: 300)),
            20.heightBox,
            applogowidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(20).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
