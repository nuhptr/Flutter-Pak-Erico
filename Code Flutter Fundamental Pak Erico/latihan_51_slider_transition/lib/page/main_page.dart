import 'dart:math';
import 'package:flutter/material.dart';

import '../widget/movie_box.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double currentPageValue = 0;
  PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.6);

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      currentPageValue = _pageController.page;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      "https://images-na.ssl-images-amazon.com/images/I/A1hFzTczzJL._SL1500_.jpg",
      "https://www.joblo.com/assets/images/joblo/posters/2019/11/yip_man_four_xlg.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/91wc7yc2R8L._SL1500_.jpg",
    ];

    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: urls.length,
        itemBuilder: (context, index) {
          double difference = index - currentPageValue;

          if (difference < 0) {
            difference *= -1;
          }
          difference = min(1, difference);

          return Center(
            child: MovieBox(
              urls[index],
              scale: 1 - (difference * 0.3),
            ),
          );
        },
      ),
    );
  }
}
