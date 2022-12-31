import 'package:blood_donation_app/Constant%20Data/style.dart';
import 'package:blood_donation_app/ui/Authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../Constant Data/app_colors.dart';
import '../../../Widget/button_global.dart';
import '../Authentication/register.dart';

class OnboardingPage3 extends StatefulWidget {
  const OnboardingPage3({Key? key}) : super(key: key);

  @override
  State<OnboardingPage3> createState() => _OnboardingPage3State();
}

class _OnboardingPage3State extends State<OnboardingPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              color: ThemeColors.primaryColor,
              width: 125,
              height: 178,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 207.0),
              child: RichText(
                  text: const TextSpan(
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
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
            ),
            SizedBox(
              height: 54,
            ),
            Text(
              'You can donate for ones in need and \n request blood if you need.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 89,
            ),
            ButtonDecoration(
              onPressed: () {
                SignIn().launch(context);
              },
              title: 'SIGN IN',
              buttonTextColor: ThemeColors.primaryColor,
              buttonDecoration: myButtonDecoration,
            ),
            SizedBox(
              height: 21,
            ),
            ButtonDecoration(
              onPressed: () {
                RegisterPage().launch(context);
              },
              title: 'REGISTER',
              buttonTextColor: ThemeColors.whiteColor,
              buttonDecoration:
                  myButtonDecoration.copyWith(color: ThemeColors.primaryColor),
            ),
          ],
        ),
      ),
    ));
  }
}
