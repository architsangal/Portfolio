import 'package:flutter/material.dart';
import 'package:portfolio/laptop/home.dart';
import 'package:portfolio/mobile/home.dart';
import 'package:portfolio/tablet/home.dart';

class Responsive extends StatelessWidget {
  const Responsive({key}) : super(key: key);

  Widget home(double width, double height) {
    int orientation = -1;
    if (width > height) {
      orientation = 0;
    } else {
      orientation = 1;
    }
    // 0 means landscape and 1 means portrait

    // Mobile
    if (width <= 700) {
      return MyHomePageMobile(title: 'Portfolio');
    }
    // Laptop
    else if (width > 700 && orientation == 0) {
      return MyHomePage(title: 'Portfolio');
    }
    // Tablet
    else {
      return MyHomePageTablet(title: 'Portfolio');
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(width);
    print(height);

    return SafeArea(
        child: Container(
      child: home(width, height),
    ));
  }
}
