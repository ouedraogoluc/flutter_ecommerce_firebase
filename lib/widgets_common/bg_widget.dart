import 'package:ecommerce_app_laravel_flutter/consts/consts.dart';
import 'package:flutter/material.dart';


Widget bgWisdget({Widget?child}){
  return Container(
    decoration:const BoxDecoration(
      image:DecorationImage(image: AssetImage(imgBackground),
      fit: BoxFit.fill
      ),
    ) ,
    child:child ,
  );
}
