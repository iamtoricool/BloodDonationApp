import 'package:blood_donation_app/ui/app_theme/theme_colors.dart';
import 'package:blood_donation_app/ui/widget/custom_design.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 66, bottom: 100),
                child: Image.asset(
                  'assets/images/Logo_with_tagline.png',
                  height: 140,
                ),
              ),
              const CustomAppTextField(
                textFieldType: TextFieldType.EMAIL,
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: ThemeColors.primaryColor,
                ),
                hintText: 'Email',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomAppTextField(
                textFieldType: TextFieldType.PASSWORD,
                prefixIcon: Icon(
                  Icons.lock_open_outlined,
                  color: ThemeColors.primaryColor,
                ),
                hintText: 'Password',
              ),
              const SizedBox(
                height: 85,
              ),
              CustomTextButton(
                isFilled: true,
                labelText: 'LOG IN',
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {
                  toast('value');
                },
                style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent)),
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                      fontSize: 14, color: ThemeColors.primaryColor),
                ),
              ),
              const Spacer(),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Don’t have an account?',
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: ThemeColors.greyDarkerColor),
                  ),
                  TextSpan(
                      text: ' Register Now.',
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: ThemeColors.primaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => toast('wait'))
                ]),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
