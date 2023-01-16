import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../Constant Data/app_colors.dart';
import '../Authentication/on_boarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> goToSlider() async {
    await Future.delayed(const Duration(seconds: 3))
        .then((value) => const OnBoardingPage().launch(context));
  }

  @override
  void initState() {
    goToSlider();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Image.asset(
                'images/logo.png',
                height: 171,
                width: 114,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 207.0),
              child: Text(
                'Dare To Donate',
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: ThemeColors.whiteColor),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Image.asset('images/spc.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
