import 'package:blood_donation_app/Constant%20Data/app_colors.dart';
import 'package:blood_donation_app/Constant%20Data/style.dart';
import 'package:blood_donation_app/Widget/button_global.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pinput/pinput.dart';

import 'change_password.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Pinput(
                  defaultPinTheme: PinTheme(
                    height: 70,
                    width: 70,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: ThemeColors.greyLighterColor,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonDecoration(
                    title: 'Verify',
                    buttonTextColor: ThemeColors.whiteColor,
                    onPressed: () {
                      const ChangePassword().launch(context);
                    },
                    buttonDecoration: myButtonDecoration.copyWith(
                        color: ThemeColors.primaryColor))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
