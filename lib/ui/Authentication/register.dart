import 'package:blood_donation_app/Constant%20Data/style.dart';
import 'package:blood_donation_app/Widget/button_global.dart';
import 'package:blood_donation_app/ui/Authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Constant Data/app_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 68.0),
          child: Column(
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
              SizedBox(
                height: 50,
              ),
              AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                  filled: true,
                  focusColor: Colors.black,
                  fillColor: ThemeColors.greyLighterColor,
                  labelText: 'Enter Your Name',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: ThemeColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
                  fillColor: ThemeColors.greyLighterColor,
                  labelText: 'Enter Email Address',
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: ThemeColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(
                textFieldType: TextFieldType.PHONE,
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
                  labelText: 'Enter Your Phone Number',
                  prefixIcon: const Icon(
                    Icons.phone,
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
                  labelText: 'Password',
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: ThemeColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(
                textFieldType: TextFieldType.OTHER,
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
                  labelText: 'Enter Your Blood Group',
                  prefixIcon: const Icon(
                    Icons.bloodtype_outlined,
                    color: ThemeColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(
                textFieldType: TextFieldType.NAME,
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
                  labelText: 'Enter Your Location',
                  prefixIcon: const Icon(
                    Icons.location_on_outlined,
                    color: ThemeColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 53,
              ),
              ButtonDecoration(
                  title: 'REGISTER',
                  buttonTextColor: Colors.white,
                  onPressed: () {},
                  buttonDecoration: myButtonDecoration.copyWith(
                      color: ThemeColors.primaryColor)),
              const SizedBox(
                height: 26,
              ),
              GestureDetector(
                onTap: () {
                  const SignIn().launch(context);
                },
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(color: ThemeColors.paragraphColor)),
                      TextSpan(
                          text: 'Log In.',
                          style: TextStyle(color: ThemeColors.primaryColor)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
