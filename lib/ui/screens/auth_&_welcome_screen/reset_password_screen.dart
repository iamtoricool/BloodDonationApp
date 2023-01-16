import 'package:blood_donation_app/ui/app_theme/theme_colors.dart';
import 'package:blood_donation_app/ui/widget/custom_design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import 'verify_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              Text(
                'Your password reset will be send in your registered email address.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 14, color: ThemeColors.greyDarkerColor),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextButton(
                isFilled: true,
                labelText: 'Send',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerifyScreen(),
                      ));
                },
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
