// ignore_for_file: must_be_immutable

import 'package:blood_donation_app/ui/app_theme/theme_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    Key? key,
    required this.isFilled,
    required this.labelText,
    required this.onPressed,
  }) : super(key: key);
  final bool isFilled;
  final String labelText;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith(
            (states) => ThemeColors.primaryColor.withOpacity(0.08)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
            minHeight: 45, minWidth: 374, maxHeight: 50, maxWidth: 384),
        child: Container(
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isFilled ? ThemeColors.primaryColor : Colors.transparent,
              border: Border.all(
                width: 2,
                color: isFilled ? Colors.transparent : ThemeColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            labelText,
            style: GoogleFonts.poppins(
                color: isFilled
                    ? ThemeColors.whiteColor
                    : ThemeColors.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

class CustomAppTextField extends StatelessWidget {
  const CustomAppTextField({
    Key? key,
    required this.prefixIcon,
    required this.textFieldType,
    required this.hintText,
    this.textEditingController,
  }) : super(key: key);

  final Icon prefixIcon;
  final TextFieldType textFieldType;
  final String hintText;
  final TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: textEditingController,
      textFieldType: textFieldType,
      decoration: InputDecoration(
        prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: prefixIcon,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Container(
                  height: 46,
                  width: 1,
                  color: ThemeColors.greyDarkColor,
                ),
              ),
            ]),
        filled: true,
        fillColor: Colors.grey[200],
        hintText: hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.all(15),
      ),
    );
  }
}

class BannerSlider extends StatefulWidget {
  const BannerSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  List<String> imgURL = [
    'assets/images/banner_images/img1.jpg',
    'assets/images/banner_images/img2.jpg',
    'assets/images/banner_images/img3.jpg',
    'assets/images/banner_images/img4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    int current = 0;
    final CarouselController controller = CarouselController();
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: imgURL.length,
          itemBuilder: (context, index, realIndex) => Container(
            height: 336,
            width: 288,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(imgURL[index]), fit: BoxFit.cover)),
          ),
          carouselController: controller,
          options: CarouselOptions(
              height: 336,
              autoPlay: true,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgURL.asMap().entries.map((entry) {
            return GestureDetector(
                onTap: () => controller.animateToPage(entry.key),
                child: Container(
                  width: current == entry.key ? 24 : 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Color(0xffACAFC3)
                        : Color(0xff475AD7)
                            .withOpacity(current == entry.key ? 1 : 0.1)),
                  ),
                ));
          }).toList(),
        ),
      ],
    );
  }
}
