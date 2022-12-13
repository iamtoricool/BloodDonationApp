import 'package:blood_donation_app/ui/screens/onboarding_auth/splashscreen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
