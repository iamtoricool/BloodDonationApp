import 'package:blood_donation_app/ui/Authentication/verify_screen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Constant Data/app_colors.dart';
import '../../Constant Data/style.dart';
import '../../Widget/button_global.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 68.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                    fillColor: ThemeColors.greyLighterColor,
                    labelText: 'Enter Your Email',
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: ThemeColors.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 39,
                ),
                const Text(
                  'Your password reset will be send in your\n registered email address.',
                  style: TextStyle(
                      color: ThemeColors.paragraphColor, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonDecoration(
                  title: 'SEND',
                  buttonTextColor: ThemeColors.whiteColor,
                  onPressed: () {
                    const VerifyScreen().launch(context);
                  },
                  buttonDecoration: myButtonDecoration.copyWith(
                      color: ThemeColors.primaryColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
