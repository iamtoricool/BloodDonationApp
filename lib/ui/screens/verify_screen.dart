import 'package:blood_donation_app/ui/app_theme/theme_colors.dart';
import 'package:blood_donation_app/ui/widget/custom_design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pinput/pinput.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Pinput(
                  defaultPinTheme: PinTheme(
                decoration: BoxDecoration(
                    color: ThemeColors.greyColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(5)),
                height: 65,
                width: 65,
                textStyle: GoogleFonts.poppins(
                    fontSize: 40, color: ThemeColors.darkColor),
              )),
              const SizedBox(
                height: 20,
              ),
              CustomTextButton(
                isFilled: true,
                labelText: 'Send',
                onPressed: () {},
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
