import 'package:blood_donation_app/ui/app_theme/theme_colors.dart';
import 'package:blood_donation_app/ui/screens/verify_screen.dart';
import 'package:blood_donation_app/ui/widget/custom_design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import 'password_changed.dart';

class AddNewPasswordScreen extends StatefulWidget {
  const AddNewPasswordScreen({super.key});

  @override
  State<AddNewPasswordScreen> createState() => _AddNewPasswordScreenState();
}

class _AddNewPasswordScreenState extends State<AddNewPasswordScreen> {
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
                textFieldType: TextFieldType.PASSWORD,
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  color: ThemeColors.primaryColor,
                ),
                hintText: 'New Password',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomAppTextField(
                textFieldType: TextFieldType.PASSWORD,
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  color: ThemeColors.primaryColor,
                ),
                hintText: 'Confirm Password',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Please try to remember the new password this time.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 14, color: ThemeColors.greyDarkerColor),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextButton(
                isFilled: true,
                labelText: 'Change Password',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordChangedScreen(),
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
