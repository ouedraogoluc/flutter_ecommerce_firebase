
import 'package:ecommerce_app_laravel_flutter/consts/consts.dart';
import 'package:flutter/material.dart';

Widget OurButton({onPress,color,textColor,String ?title}){

  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12)
    ),
    onPressed: (){
      onPress;
    }, child: title!.text.color(textColor).fontFamily(bold).make());
}