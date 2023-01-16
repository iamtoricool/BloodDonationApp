// ignore_for_file: library_private_types_in_public_api

import 'package:blood_donation_app/ui/app_theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'auth_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AuthScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 38.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.symmetric(horizontal: 67),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Find Blood Donors",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.",
          image: Image.asset('assets/images/onboardScreen1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Post A Blood Request",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.",
          image: Image.asset('assets/images/onboardScreen2.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: ThemeColors.darkColor)),
      next: const Text('Next',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: ThemeColors.primaryColor)),
      done: const Text('Done',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: ThemeColors.primaryColor)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: indicatorDot(),
    );
  }

  DotsDecorator indicatorDot() {
    return const DotsDecorator(
      size: Size(10.0, 10.0),
      color: Color(0xffE0E0E0),
      activeSize: Size(45.0, 10.0),
      activeColor: Color(0xffFF2156),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}
