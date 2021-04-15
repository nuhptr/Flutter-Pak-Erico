import 'package:flutter/material.dart';
import 'package:latihan_50_pageview/ui/first_screen.dart';
import 'package:latihan_50_pageview/ui/third_screen.dart';

import '../ui/first_screen.dart';
import '../ui/second_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController(
    initialPage: 0,
  );

  int currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "First",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: "second",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "third",
          )
        ],
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[500],
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          _pageController.animateToPage(
            value,
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          );
          setState(() {});
        },
      ),
      body: Center(
        child: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          children: [
            // todo: Bisa diganti dengan UI/Screen Lain
            // ChildWidget(number: AvailableNumber.First),
            FirstScreen(),
            SecondScreen(),
            ThirdScreen(),
          ],
        ),
      ),
    );
  }
}
