import 'package:blood_donation_app/ui/app_theme/theme_colors.dart';
import 'package:blood_donation_app/ui/widget/custom_design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';
import 'register_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/Logo_with_tagline.png',
                height: 242,
                width: 260,
              ),
              const SizedBox(
                height: 54,
              ),
              Text(
                  'You can donate for ones in need and request blood if you need.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: ThemeColors.paragraphColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
              const SizedBox(
                height: 90,
              ),
              CustomTextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  },
                  isFilled: false,
                  labelText: 'LOG IN'),
              CustomTextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ));
                  },
                  isFilled: true,
                  labelText: 'REGISTER'),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
