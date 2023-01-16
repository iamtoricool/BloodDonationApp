import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 26),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'images/menu.png',
                  height: 27,
                  width: 27,
                ),
                const SizedBox(
                  height: 27,
                  width: 27,
                  child: Icon(Icons.notification_add_outlined),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
