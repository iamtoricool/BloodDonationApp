import 'package:blood_donation_app/ui/app_theme/theme_colors.dart';
import 'package:blood_donation_app/ui/screens/login_screen.dart';
import 'package:blood_donation_app/ui/widget/custom_design.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: Image.asset(
                  'assets/images/Logo_with_tagline.png',
                  height: 140,
                ),
              ),
              const CustomAppTextField(
                textFieldType: TextFieldType.NAME,
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: ThemeColors.primaryColor,
                ),
                hintText: 'Full Name',
              ),
              const SizedBox(
                height: 18,
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
                height: 18,
              ),
              const CustomAppTextField(
                textFieldType: TextFieldType.PASSWORD,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: ThemeColors.primaryColor,
                ),
                hintText: 'Password',
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomAppTextField(
                textFieldType: TextFieldType.PHONE,
                prefixIcon: Icon(
                  Icons.phone,
                  color: ThemeColors.primaryColor,
                ),
                hintText: 'Phone Number',
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomAppTextField(
                textFieldType: TextFieldType.OTHER,
                prefixIcon: Icon(
                  Icons.bloodtype_outlined,
                  color: ThemeColors.primaryColor,
                ),
                hintText: 'Blood Type',
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomAppTextField(
                textFieldType: TextFieldType.OTHER,
                prefixIcon: Icon(
                  Icons.location_on_outlined,
                  color: ThemeColors.primaryColor,
                ),
                hintText: 'Location',
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextButton(
                isFilled: true,
                labelText: 'REGISTER',
                onPressed: () {},
              ),
              const Spacer(),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Already have an account? ',
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: ThemeColors.greyDarkerColor),
                  ),
                  TextSpan(
                      text: 'Log In.',
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: ThemeColors.primaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                            (route) => false))
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
