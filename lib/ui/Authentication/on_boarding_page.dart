import 'package:blood_donation_app/ui/Authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../Constant Data/app_colors.dart';

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
        builder: (context) => const SignIn(),
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
          image: Image.asset('images/first.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Post A Blood Request",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.",
          image: Image.asset('images/second.png'),
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
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.black,
      ),
      done: const Text('Done',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: ThemeColors.primaryColor)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xffE0E0E0),
        activeSize: Size(45.0, 10.0),
        activeColor: Color(0xffFF2156),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
