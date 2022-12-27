import 'dart:async';
import 'package:blood_donation_app/ui/screens/add_new_password.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:blood_donation_app/ui/app_theme/theme_colors.dart';
import 'package:blood_donation_app/ui/widget/custom_design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  TextEditingController _pinController = (TextEditingController());
  int start = 5;
  void resendTimer() {
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

  @override
  void initState() {
    resendTimer();
    super.initState();
  }

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
                controller: _pinController,
                cursor: Container(
                  height: 24,
                  width: 2,
                  color: ThemeColors.primaryColor,
                ),
                defaultPinTheme: PinTheme(
                    height: 65,
                    width: 65,
                    textStyle: GoogleFonts.poppins(
                        fontSize: 30, color: ThemeColors.darkColor),
                    decoration: BoxDecoration(
                        color: ThemeColors.greyColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5))),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerRight,
                child: start != 0
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Resend code in ',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: ThemeColors.primaryColor),
                          ),
                          Text(
                            '$start Sec',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: ThemeColors.primaryColor),
                          ),
                        ],
                      )
                    : Text(
                        'Send Code Again',
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: ThemeColors.primaryColor),
                      ).onTap(() {}),
              ),
              CustomTextButton(
                isFilled: true,
                labelText: 'Verify',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddNewPasswordScreen(),
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
