import 'package:flutter/cupertino.dart';

class ButtonDecoration extends StatelessWidget {
  ButtonDecoration({
    Key? key,
    required this.title,
    required this.buttonTextColor,
    required this.onPressed,
    required this.buttonDecoration,
  }) : super(key: key);

  final String title;
  final Color buttonTextColor;
  final Decoration buttonDecoration;
  var onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: buttonDecoration,
        child: Text(
          title,
          style: TextStyle(fontSize: 22, color: buttonTextColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
