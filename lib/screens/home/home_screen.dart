import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/animations/custom_animations.dart';
import 'package:flutter_application_1/screens/home/widgets/category_widget.dart';

import 'widgets/home_single_product.dart';
import 'widgets/searchBar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "assets/images/PlayStation5.png",
    "assets/images/PlayStation5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CustomAnimation(
        home: Column(
          children: [
            Categories(),
            SearchBar(),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: CarouselSlider(
                  items: images.map((e) => HomeSingleProduct(image: e),).toList(),
                  options: CarouselOptions(
                    height: double.infinity,
                    //aspectRatio: 16 / 9,
                    initialPage: 0,
                    //enableInfiniteScroll: true,
                    reverse: false,
                    //autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 200),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
