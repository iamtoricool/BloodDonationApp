import 'package:blood_donation_app/ui/widget/custom_design.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'login_screen.dart';

class PasswordChangedScreen extends StatefulWidget {
  const PasswordChangedScreen({super.key});

  @override
  State<PasswordChangedScreen> createState() => _PasswordChangedScreenState();
}

class _PasswordChangedScreenState extends State<PasswordChangedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/success.png',
                height: 228,
              ),
            ),
            const SizedBox(
              height: 105,
            ),
            CustomTextButton(
              isFilled: true,
              labelText: 'Finish',
              onPressed: () {
                const LoginScreen().launch(context, isNewTask: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
