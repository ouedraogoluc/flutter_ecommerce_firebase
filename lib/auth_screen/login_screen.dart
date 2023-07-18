import 'package:ecommerce_app_laravel_flutter/consts/consts.dart';
import 'package:ecommerce_app_laravel_flutter/widgets_common/applogo_widget.dart';
import 'package:ecommerce_app_laravel_flutter/widgets_common/bg_widget.dart';
import 'package:ecommerce_app_laravel_flutter/widgets_common/custom_textField.dart';
import 'package:ecommerce_app_laravel_flutter/widgets_common/our_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return bgWisdget(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight*0.1).heightBox,
              applogowidget(),
              10.heightBox,
              "s'inscrire a $appname".text.fontFamily(bold).white.size(22).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(hint: emailHint,title: email),
                  customTextField(hint: passwordHint,title: password),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetPassword.text.make())) ,
                    5.heightBox,
                    // OurButton().box.width(context.screenWidth-50).make(),
                    OurButton(color: redColor,title: login,textColor: whiteColor,onPress: (){})
                    .box.width(context.screenWidth-50).make(),
                    5.heightBox,
                    createNewAccount.text.color(fontGrey).make(),
                    5.heightBox,
                      OurButton(color: lightGrey,title: signup,textColor: redColor,onPress: (){})
                    .box.width(context.screenWidth-50).make(),
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).make(),
            ],
          ),
        ),
      )
    );
  }
}