import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Model/slider_file.dart';

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
            ),
            CarouselSlider(
              items: [
                ListView.builder(
                  itemCount: slider.length,
                  itemBuilder: (_, index) => Container(
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('${slider[index].imageUrl}'))),
                  ),
                )
              ],
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
                autoPlay: true,
                // autoPlayInterval: Duration(milliseconds: 100),// default 400
                // reverse: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                // scrollDirection: Axis.horizontal,
                //or scrollDirection: Axis.vertical, default horizontal
                viewportFraction: 0.8,
                // padEnds: false first page show half
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
