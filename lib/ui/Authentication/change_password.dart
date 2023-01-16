import 'package:blood_donation_app/Constant%20Data/style.dart';
import 'package:blood_donation_app/Widget/button_global.dart';
import 'package:blood_donation_app/ui/Authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Constant Data/app_colors.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
              textFieldType: TextFieldType.PASSWORD,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5)),
                filled: true,
                fillColor: ThemeColors.greyLighterColor,
                labelText: 'New Password',
                prefixIcon: const Icon(
                  Icons.lock,
                  color: ThemeColors.primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AppTextField(
              textFieldType: TextFieldType.PASSWORD,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5)),
                filled: true,
                fillColor: ThemeColors.greyLighterColor,
                labelText: 'Confirm Password',
                prefixIcon: const Icon(
                  Icons.lock,
                  color: ThemeColors.primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Please try to remember the new password \nthis time',
              textAlign: TextAlign.center,
              style: TextStyle(color: ThemeColors.paragraphColor, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonDecoration(
              title: 'Change Password',
              buttonTextColor: ThemeColors.whiteColor,
              onPressed: () {
                return showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      alignment: Alignment.topLeft,
                      child: AlertDialog(
                        icon: Padding(
                          padding: const EdgeInsets.only(bottom: 50.0),
                          child: Image.asset(
                            'images/success.png',
                            height: 275,
                            width: 184,
                          ),
                        ),
                        title: ButtonDecoration(
                            title: 'Finish',
                            buttonTextColor: ThemeColors.whiteColor,
                            onPressed: () {
                              SignIn().launch(context, isNewTask: true);
                            },
                            buttonDecoration: myButtonDecoration.copyWith(
                                color: ThemeColors.primaryColor)),
                      ),
                    );
                  },
                );
              },
              buttonDecoration:
                  myButtonDecoration.copyWith(color: ThemeColors.primaryColor),
            )
          ],
        ),
      ),
    );
  }
}
