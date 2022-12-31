import 'package:blood_donation_app/Constant%20Data/style.dart';
import 'package:blood_donation_app/Widget/button_global.dart';
import 'package:blood_donation_app/ui/Authentication/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Constant Data/app_colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 68.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'images/logo.png',
                  color: ThemeColors.primaryColor,
                  width: 102,
                  height: 68,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              RichText(
                  text: const TextSpan(
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                        text: 'Dare ',
                        style: TextStyle(color: ThemeColors.primaryColor)),
                    TextSpan(
                        text: 'To',
                        style: TextStyle(color: ThemeColors.greyDarkerColor)),
                    TextSpan(
                        text: ' Donate',
                        style: TextStyle(color: ThemeColors.primaryColor)),
                  ])),
              const SizedBox(
                height: 170,
              ),
              AppTextField(
                textFieldType: TextFieldType.EMAIL,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                  filled: true,
                  focusColor: Colors.black,
                  fillColor: ThemeColors.greyLighterColor,
                  prefixIcon: const Icon(
                    Icons.email,
                    color: ThemeColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(
                textFieldType: TextFieldType.PASSWORD,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                  filled: true,
                  fillColor: ThemeColors.greyLighterColor,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: ThemeColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ButtonDecoration(
                title: 'LOG IN',
                buttonTextColor: ThemeColors.whiteColor,
                onPressed: () {},
                buttonDecoration: myButtonDecoration.copyWith(
                    color: ThemeColors.primaryColor),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  const ResetPassword().launch(context);
                },
                child: const Text(
                  'Forgot Password?',
                  style:
                      TextStyle(color: ThemeColors.primaryColor, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 125,
              ),
              RichText(
                text: const TextSpan(style: TextStyle(fontSize: 18), children: [
                  TextSpan(
                    text: 'Don’t have an account?',
                    style: TextStyle(color: ThemeColors.paragraphColor),
                  ),
                  TextSpan(
                    text: 'Register Now',
                    style: TextStyle(color: ThemeColors.primaryColor),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
