// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:blood_donation_app/ui/app_theme/theme_colors.dart';
import 'package:blood_donation_app/ui/widget/custom_design.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    IconlyBold.category,
                    color: ThemeColors.primaryColor,
                  ),
                  const Icon(
                    Icons.notifications_outlined,
                    color: ThemeColors.darkColor,
                  )
                ],
              ),
            ),
            BannerSlider()
          ],
        ),
      ),
    );
  }
}
