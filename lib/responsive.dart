import 'package:flutter/material.dart';
import 'package:portfolio/laptop/home.dart';

class Responsive extends StatelessWidget {
  const Responsive({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(width);
    print(height);

    return Container(
      child: MyHomePage(title: 'Portfolio'),
    );
  }
}
