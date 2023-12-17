import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck =false;
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill)),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "join the $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(hint: nameHint, title: name),
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passwordHint, title: password),
                  customTextField(hint: retypePassword, title: retypePassword),
                  Align(
                    alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                  5.heightBox,

                  //ourButton().box.width(context.screenWidth - 50).make(),
                  // Button Not use (if you want to use do some changes in button.dart file)
                  // NOT FOR USE
                  // EXTRA CODE FOR BUTTON & TEXT

                  // 5.heightBox,
                  // createNewAccount.text.color(fontGrey).make(),

                  // 5.heightBox,
                  // ourButton(Color: golden, title: signup, textColor: redColor, onPress: () {})
                  // .box
                  // .width(context.screenWidth - 50)
                  // .make(),

                  
                  // 10.heightBox,
                  // loginWith.text.color(fontGrey).make(),
                  
                  // 5.heightBox,
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: List.generate(3, 
                  //   (index) => Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //   child: CircleAvatar(
                  //     backgroundColor: lightGrey,
                  //     radius: 25,
                  //     child: Image.asset(socialIconList[index],
                  //     width: 30,
                  //     ),
                  //   ),
                  //   ))
                  //  ),

                  Row(
                    children: [
                      Checkbox(checkColor: redColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      }
                      ),
                      10.widthBox,
                      Expanded(
                      child: RichText(
                        text: const TextSpan(
                          children:[
                           TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                           fontFamily: regular,
                           color: fontGrey,
                      )),
                      TextSpan(
                          text: termsAndCond,
                          style: TextStyle(
                           fontFamily: regular,
                           color: redColor,
                          )),
                          TextSpan(
                          text: " &",
                          style: TextStyle(
                           fontFamily: regular,
                           color: fontGrey,
                          )),
                          TextSpan(
                          text: privacyPolicy,
                          style: TextStyle(
                           fontFamily: regular,
                           color: redColor,
                          )),
                      ],
                    )),
                      ),
                    ],
                  ),

                  15.heightBox,
                  ourButton(Color: isCheck ==true? redColor : lightGrey, title: signup, textColor: whiteColor, onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),

                  10.heightBox,
                  //wrapped into gesture detector of velocity x
                  RichText(
                    text: const TextSpan(
                      children: [
                      TextSpan(
                       text: alreadyHaveAccount,
                       style: TextStyle(fontFamily: bold, color: fontGrey),
                      ),
                      TextSpan(
                       text: login,
                       style: TextStyle(fontFamily: bold, color: redColor),
                      ),
                      ],
                    ),
                    ).onTap(() {
                    Get.back();
                     }),
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
            ],
          ),
        ),
      ),
  );
  }
}