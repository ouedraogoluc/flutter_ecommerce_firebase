import 'package:ecommerce_app_laravel_flutter/consts/consts.dart';
import 'package:ecommerce_app_laravel_flutter/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'consts/strings.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //we are using getx so we have to change this material app getmaterialapp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     title: appname,
     theme: ThemeData(
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      ),
      fontFamily: regular
     ),
     home: const SplashScreen(),
    );
  }
}
